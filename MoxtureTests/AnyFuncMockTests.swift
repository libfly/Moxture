// @Copyright 2021 imnosov. All rights reserved.

import Moxture
import XCTest

final class AnyFuncMockTests: XCTestCase {

    fileprivate var example: ExampleMock!

    override func setUp() {
        super.setUp()
        example = .init()
    }

    override func tearDown() {
        example = nil
        super.tearDown()
    }

    func testReset() {
        // given
        example.exampleFunc.returns = 123
        let result: Int = example.example()

        // when
        example.exampleFunc.reset()

        // then
        XCTAssertEqual(result, 123)
        XCTAssertFalse(example.exampleFunc.called)
        XCTAssertNil(example.exampleFunc.returns)
    }

    func testThrows() {
        // given
        example.exampleThrowsFunc.throws = ExampleError()

        // when
        var result: Error?
        do {
            let _: Int = try example.exampleThrows()
        } catch {
            result = error
        }

        // then
        XCTAssertNotNil(result)
    }

    func testNoThrow() throws {
        // given
        example.exampleThrowsFunc.returns = 123

        // when
        let result: Int = try self.example.exampleThrows()

        // then
        XCTAssertEqual(result, 123)
    }

    func testCallTwice() {
        // when
        example.exampleArgVoid(a: 0)
        example.exampleArgVoid(a: "1")

        // then
        XCTAssertEqual(example.exampleArgVoid.calls[0] as? Int, 0)
        XCTAssertEqual(example.exampleArgVoid.calls[1] as? String, "1")
    }

    func testNoArgs() {
        // given
        example.exampleFunc.returns = 123

        // when
        let result: Int = example.example()

        // then
        XCTAssertEqual(result, 123)
    }

    func testNoArgsOpt() {
        // when
        let result: Int? = example.exampleOpt()

        // then
        XCTAssertNil(result)
    }

    func testOptThrows() {
        // given
        example.exampleOptThrowsFunc.throws = ExampleError()

        // when
        var result: Error?
        do {
            let _: Int? = try example.exampleOptThrows()
        } catch {
            result = error
        }

        // then
        XCTAssertNotNil(result)
    }

    func testOptNoThrow() throws {
        // given
        example.exampleOptThrowsFunc.returns = 123

        // when
        let result: Int? = try self.example.exampleOptThrows()

        // then
        XCTAssertEqual(result, 123)
    }

    func testArg() {
        // given
        example.exampleArg.returns = 123

        // when
        let result: Int = example.exampleArg(a: 0)

        // then
        XCTAssertEqual(example.exampleArg.args(of: Int.self), 0)
        XCTAssertEqual(result, 123)
    }

    func testOnCall() {
        // given
        var result: Any?
        example.exampleArgVoid.onCall { result = $0 }

        // when
        example.exampleArgVoid(a: 0)

        // then
        XCTAssertEqual(result as? Int, 0)
    }
}

private protocol Example {
    func example<R>() -> R
    func exampleThrows<R>() throws -> R
    func exampleOpt<R>() -> R?
    func exampleOptThrows<R>() throws -> R?
    func exampleArgVoid<A>(a: A)
    func exampleArg<A, R>(a: A) -> R
}

private final class ExampleMock: Example {

    lazy var exampleFunc = AnyFuncMock()
    func example<R>() -> R {
        exampleFunc.call() as! R
    }

    lazy var exampleThrowsFunc = AnyFuncMock()
    func exampleThrows<R>() throws -> R {
        try exampleThrowsFunc.callThrows() as! R
    }

    lazy var exampleOptFunc = AnyFuncMock()
    func exampleOpt<R>() -> R? {
        exampleOptFunc.call() as! R?
    }

    lazy var exampleOptThrowsFunc = AnyFuncMock()
    func exampleOptThrows<R>() throws -> R? {
        try exampleOptThrowsFunc.callThrows() as! R?
    }

    lazy var exampleArgVoid = AnyFuncMock()
    func exampleArgVoid<A>(a: A) {
        exampleArgVoid.call(a)
    }

    lazy var exampleArg = AnyFuncMock()
    func exampleArg<A, R>(a: A) -> R {
        exampleArg.call(a) as! R
    }
}

private struct ExampleError: Error { }
