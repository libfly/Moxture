<p align="center">
  <img src="README/logo.png" height="300">
</p>

# Moxture

Mocks + Fixtures for Swift. Testing is now even easier. Powered by generics.

Mocking is a process used in unit testing when the unit being tested has external dependencies. The purpose of mocking
is to isolate and focus on the code being tested and not on the behavior or state of external dependencies.

A test fixture is a fixed state of a set of objects used as a baseline for running tests. The purpose of a test fixture
is to ensure that there is a well known and fixed environment in which tests are run so that results are repeatable.

- ✅ Dedicated mock instances for functions and properties. This means it can be used both for mocking protocols and
classes. Generic functions are also supported.
- ✅ Data generation for structures and classes used in tests. Any property can be overridden during the
instantiation.
- ❌ Mocks and fixtures code generation - not available yet, your pull requests are always welcome.

## Installation

### Cocoapods

Add the following lines to your Podfile:

```
target "Tests" do
  use_frameworks!
  pod 'Moxture'
end
```

Run `pod install` to integrate the library to your tests target. For details of the installation and usage of
CocoaPods, please visit the official website.

## How to use

### Create mocks

For the protocol that is defined like this:

```swift
protocol Example {
    func update()
    func currentCount(name: String) -> Int
    func updateIfNeeded(name: String, count: Int) -> Bool
}
```

For each function there should be a separate lazy property that defines `FuncMock` for given function. The type of
input and output arguments for `FuncMock` will be deducted from mocked function type.

The mock should be implemented like this:

```swift
class ExampleMock: Example {

    lazy var updateFunc = FuncMock(self.update)
    func update() {
        updateFunc.call()
    }

    lazy var currentCountFunc = FuncMock(self.currentCount)
    func currentCount(name: String) -> Int {
        currentCountFunc.call(name)
    }

    lazy var updateIfNeededFunc = FuncMock(self.updateIfNeeded)
    func updateIfNeeded(name: String, count: Int) -> Bool {
        updateIfNeededFunc.call((name, count))
    }
}
```

### Mock properties

If protocol defines properties:

```swift
protocol Example {
    // ...
    var count: Int { get set }
}
```

There's a special `PropMock` that used specifically for properties:
```swift
class ExampleMock: Example {

    // ...

    lazy var countProp = PropMock(\ExampleMock.count)
    var count: Int {
        get { countProp.get.call() }
        set { countProp.set.call(newValue) }
    }
}
```

Note that due to the bug in current Swift version `\Self.count` notation can't be used.

### Use mocks in tests

This is the example of the `FuncMock` usage in the real test case:

```swift
import Moxture
import XCTest

final class ExampleTests: XCTestCase {
    func testExample() {
        // given

        let mock = ExampleMock()

        // return value must be set for function which returns any value
        // for `Fixturable` return type it will be set as `.fixture` automatically
        mock.updateIfNeededFunc.returns = true
        let sut = SystemUnderTest(example: mock)

        // when

        sut.updateExample() // this function calls example mock `updateIfNeeded(...)`
        sut.updateExample() // let's call two times

        // then

        XCTAssertTrue(mock.updateIfNeededFunc.called)

        // now `mock.updateIfNeededFunc.calls` contains two tuples of call args [("name", 0), ("name", 0)]
        XCTAssertEqual(mock.updateIfNeededFunc.calls.count, 2)

        // Assert last call using `args`
        XCTAssertEqual(mock.updateIfNeededFunc.args.0, "name")
        XCTAssertEqual(mock.updateIfNeededFunc.args.1, 0)

        // `reset()` clears calls in the function mock
        mock.updateIfNeededFunc.reset()
        XCTAssertTrue(mock.updateIfNeededFunc.calls.isEmpty)
    }
}
```

### Execute closures

When we need to execute closure in a mock as a part of test we can use `onCall`:

```swift
protocol Example {
    func update(completion: (Bool) -> Void)
}

class ExampleMock: Example {
    lazy var updateFunc = FuncMock(self.update)
    func update(completion: (Bool) -> Void) {
        updateFunc.call(completion)
    }
}

final class ExampleTests: XCTestCase {
    func testExample() {
        // given

        let mock = ExampleMock()
        // intercept the function call, get completion closure argument and call it with `true`
        mock.updateFunc.onCall {
            $0(true)
        }
        let sut = SystemUnderTest(example: mock)

        // when

        sut.update() // this calls mock.update(completion:)

        // then

        // mock successfully called the completion closure
        XCTAssertTrue(sut.updateFinished())
    }
}
```

### Handle throwing functions

For throwing functions we should use separate `FuncMock` method `callThrows(...)` (throwing functions can't be
distinct from regular ones by Swift compiler):

```swift
protocol Example {
    func update() throws
}

class ExampleMock: Example {
    lazy var updateFunc = FuncMock(self.update)
    func update() throws {
        try updateFunc.callThrows()
    }
}

final class ExampleTests: XCTestCase {
    func testExampleThrows() {
        // given

        let mock = ExampleMock()
        // set error to make the function throw, it will be thrown as soon as `update()` is called
        mock.updateFunc.throws = ExampleError()
        let sut = SystemUnderTest(example: mock)

        // when / then

        // `try sut.update()` calls example's update method
        XCTAssertThrowsError(try sut.update())
    }
}
```

### Mocks for generic functions

If function defines any generic parameters then it can't be inferred by `FuncMock`. In this case we should use
`AnyFuncMock`:

```swift
protocol Example {
    func update<Arg, Result>(object: Arg) -> Result
}

class ExampleMock: Example {
    lazy var updateFunc = AnyFuncMock() // doesn't take the function as argument
    func update<Arg, Result>(object: Arg) -> Result {
        updateFunc.call(object) as! Result // the execution will be failed if there's a type mismatch
    }
}

final class ExampleTests: XCTestCase {
    func testExample() {
        // given

        let mock = ExampleMock()
        // return value must be set
        mock.updateFunc.returns = 123
        let sut = SystemUnderTest(example: mock)

        // when

        sut.update() // this calls mock.update(...)

        // then

        // check if function was called with specific arguments,
        // use `args(of:)` to cast last call arguments to specific type
        XCTAssertEqual(mock.updateFunc.args(of: Int.self), 123)
    }
}
```

`AnyFuncMock` doesn't guarantee the generic type match, it should be controlled by the mock side.

### Fixtures

To use fixtures in the test code the data structure or class should extend `Fixturable`:

```swift
struct Example {
    var int: Int
    var string: String
    var double: Double
}

extension Example: Fixturable {
    static func fixture(label: String, configure: (inout Example) -> Void) -> Example {
        makeFixture(label, configure, self.init)
    }
}
```

We don't need to re-implement the `Fixturable` implementation if we add extra fields. We should specify initializer
if there are multiple initializers - `self.init(arg1:arg2:)`.

Function `makeFiture` recursively apply fixtures to all fields. All fields in the `Fixturable` structure should be also
`Fixturable`.

Moxture implements `Fixturable` for most of the built in Swift and Foundation types.

### Use fixtures in tests

Simple usage of the fixture is this:

```swift
final class ExampleTests: XCTestCase {
    func testExample() {
        // given

        let data: Example = .fixture
        let sut = SystemUnderTest()

        // when

        sut.update(data: data) // saves the data as `lastData`

        // then

        // all fixture instances are equal to each other
        XCTAssertEqual(sut.lastData, .fixture)

        // all fields in the fixturable data replaced by .fixture as well
        XCTAssertEqual(sut.lastData.int, .fixture)
        XCTAssertEqual(sut.lastData.string, .fixture)
    }
}
```

There's a closure for configuring the fields after instantiation:

```swift
final class ExampleTests: XCTestCase {
    func testExample() {
        // given

        let data: Example = .fixture {
            // configure a property with custom value
            $0.string = "custom string"
        }
        let sut = SystemUnderTest()

        // when

        sut.update(data: data) // saves the data as `lastData`

        // then

        // now the property of the data structure is "custom string"
        XCTAssertEqual(sut.lastData.string, .fixture { $0.string = "custom string" })
        // ...and not equal to `.fixture` anymore
        XCTAssertNotEqual(sut.lastData.string, .fixture)
    }
}
```

We should use `.fixture(label: "identifier")`, if we need multiple fixtures which should be distinct from each other:

```swift
final class ExampleTests: XCTestCase {
    func testExample() {
        // given

        let newData: Example = .fixture(label: "new")
        let oldData: Example = .fixture(label: "old")
        let sut = SystemUnderTest()
        sut.lastData = oldData

        // when

        sut.lockData() // should prevent from updating `lastData`
        sut.update(data: newData) // try to update data

        // then

        // properties of two fistures with different labels are not equal to each other
        XCTAssertNotEqual(sut.lastData.string, newData.string)
    }
}
```

In this example `.fixture(label: "new")` is not equal to `.fixture(label: "old")`. There's a limitation for structures
with fewer fields or with no fields. For example, if there's only one `Bool` property then two fixtures with different
labels are still equal to each other, because default implementation of `Bool: Fixturable` extension always returns
`true` to prevent unexpected results in tests.

In general, `.fixture` (or fixture with specific label) is guaranteed to be the identical during the program run. But
there's no guarantee that those values will be the same among different program / test runs. It uses `hashValue` under
the hood to produce values based on a specific label, it has same guarantees as `hashValue`.

### Combine mocks and fixtures

Mocks and fixtures can be easily combined with each other:

```swift
final class ExampleTests: XCTestCase {
    func testExample() {
        // given

        let mock = ExampleMock()
        // assign return value of the mock as fixture
        mock.updateFunc.returns = .fixture {
            // override id in the generated fixture
            $0.id = "custom id"
        }
        let sut = SystemUnderTest(example: mock)

        // when

        sut.update(.fixture(label: "result")) // send specific fixture as argument

        // then

        // assert by comparing with other fixtures
        XCTAssertEqual(mock.updateFunc.agrs, .fixture(label: "result"))
    }
}
```

If `FuncMock` or `PropMock` have `Fixturable` return type, then it is not required to explicitly set `returns`,
it will be automatically set as `.fixture`.

## Contribute

Your PRs are always welcome.

### TODO

- Templates for adjusting the count of arguments in Moxture functions, generate Moxture sources themselves from
templates.
- Mocks and fixtures code generation - since the resulting code is very simple, the suggestion is not to use heavy
dependencies on SourceKit.
- In-code documentation for methods and functions.
- Add extra `Fixturable` implementations for different Swift frameworks.
- Add CI server.
- Improve README.md.
