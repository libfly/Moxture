// @Copyright 2021 imnosov. All rights reserved.

import Moxture
import XCTest

final class PropMockTests: XCTestCase {

    fileprivate var example: ExampleMock!

    override func setUp() {
        super.setUp()
        example = .init()
    }

    override func tearDown() {
        example = nil
        super.tearDown()
    }

    func testGetter() {
        // given
        example.exampleProp.returns = 123

        // when
        let result = example.example

        // then
        XCTAssertTrue(example.exampleProp.get.called)
        XCTAssertEqual(result, 123)
    }

    func testSetter() {
        // given
        example.exampleWritableProp.returns = 123

        // when
        example.exampleWritable = 234

        // then
        XCTAssertEqual(example.exampleWritableProp.set.args, 234)
        XCTAssertTrue(example.exampleWritableProp.set.called)
        XCTAssertFalse(example.exampleWritableProp.get.called)
        XCTAssertEqual(example.exampleWritable, 123)
    }

    func testGetterOpt() {
        // when
        let result = example.exampleOpt

        // then
        XCTAssertTrue(example.exampleOptProp.get.called)
        XCTAssertNil(result)
    }

    func testSetterOpt() {
        // when
        example.exampleWritableOpt = 234

        // then
        XCTAssertEqual(example.exampleWritableOptProp.set.args, 234)
        XCTAssertFalse(example.exampleWritableOptProp.get.called)
        XCTAssertNil(example.exampleWritableOpt)
    }

    func testSetterOptNil() {
        // when
        example.exampleWritableOpt = nil

        // then
        XCTAssertNil(example.exampleWritableOptProp.set.args)
        XCTAssertTrue(example.exampleWritableOptProp.set.called)
        XCTAssertFalse(example.exampleWritableOptProp.get.called)
        XCTAssertNil(example.exampleWritableOpt)
    }

    func testSetterOptNilNoCall() {
        // when / then
        XCTAssertNil(example.exampleWritableOptProp.set.args)
        XCTAssertFalse(example.exampleWritableOptProp.set.called)
        XCTAssertNil(example.exampleWritableOpt)
    }

    func testGetterOnCall() {
        // given
        var called = false
        example.exampleProp.get.onCall { called = true }
        example.exampleProp.returns = 123

        // when
        let result = example.example

        // then
        XCTAssertTrue(called)
        XCTAssertEqual(result, 123)
    }

    func testSetterOnCall() {
        // given
        var result: Int?
        example.exampleWritableProp.set.onCall { result = $0 }

        // when
        example.exampleWritable = 234

        // then
        XCTAssertEqual(result, 234)
    }

    func testFixturableGetter() {
        // when
        let result = example.example

        // then
        XCTAssertTrue(example.exampleProp.get.called)
        XCTAssertEqual(result, .fixture)
    }

    func testNonFixturableGetter() {
        // given
        example.exampleNonFixturableProp.returns = .init()

        // when
        let result = example.exampleNonFixturable

        // then
        XCTAssertTrue(example.exampleNonFixturableProp.get.called)
        XCTAssertEqual(result, NonFixturable())
    }

    func testGetTwice() {
        // given
        example.exampleProp.returns = 123

        // when
        _ = example.example
        _ = example.example

        // then
        XCTAssertEqual(example.exampleProp.get.calls.count, 2)
    }

    func testSetTwice() {
        // when
        example.exampleWritable = 123
        example.exampleWritable = 234

        // then
        XCTAssertEqual(example.exampleWritableProp.set.calls, [123, 234])
    }

    func testReset() {
        // given
        example.exampleProp.returns = 123

        // when
        _ = example.example
        example.exampleProp.reset()

        // then
        XCTAssertFalse(example.exampleProp.get.called)
        XCTAssertNil(example.exampleProp.returns)
    }
}

private protocol Example {
    var example: Int { get }
    var exampleWritable: Int { get set }
    var exampleOpt: Int? { get }
    var exampleWritableOpt: Int? { get set }
    var exampleNonFixturable: NonFixturable { get }
}

private struct NonFixturable: Equatable { }

private final class ExampleMock: Example {

    lazy var exampleProp = PropMock(\ExampleMock.example)
    var example: Int {
        exampleProp.get.call()
    }

    lazy var exampleWritableProp = PropMock(\ExampleMock.exampleWritable)
    var exampleWritable: Int {
        get { exampleWritableProp.get.call() }
        set { exampleWritableProp.set.call(newValue) }
    }

    lazy var exampleOptProp = PropMock(\ExampleMock.exampleOpt)
    var exampleOpt: Int? {
        exampleOptProp.get.call()
    }

    lazy var exampleWritableOptProp = PropMock(\ExampleMock.exampleWritableOpt)
    var exampleWritableOpt: Int? {
        get { exampleWritableOptProp.get.call() }
        set { exampleWritableOptProp.set.call(newValue) }
    }

    lazy var exampleNonFixturableProp = PropMock(\ExampleMock.exampleNonFixturable)
    var exampleNonFixturable: NonFixturable {
        exampleNonFixturableProp.get.call()
    }
}
