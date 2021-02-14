// @Copyright 2021 imnosov. All rights reserved.

import Moxture
import XCTest

final class FuncMockCommonTests: XCTestCase {

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
        example.exampleVoid()

        // when
        example.exampleVoidFunc.reset()

        // then
        XCTAssertFalse(example.exampleVoidFunc.called)
    }

    func testThrows() {
        // given
        example.exampleThrowsFunc.returns = 123
        example.exampleThrowsFunc.throws = ExampleError()

        // when / then
        XCTAssertThrowsError(try example.exampleThrows())
        XCTAssertTrue(example.exampleThrowsFunc.called)
    }

    func testNoThrow() throws {
        // given
        example.exampleThrowsFunc.returns = 123

        // when
        let result = try self.example.exampleThrows()

        // then
        XCTAssertEqual(result, 123)
    }

    func testOnCall() {
        // given
        example.exampleClosure.onCall { $0(123) }

        // when
        var result: Int?
        example.exampleClosure { result = $0 }

        // then
        XCTAssertEqual(result, 123)
    }

    func testCallTwice() {
        // when
        example.exampleArgVoid(a0: 0)
        example.exampleArgVoid(a0: 1)

        // then
        XCTAssertEqual(example.exampleArgVoid.calls, [0, 1])
    }

    func testNoArgs() {
        // given
        example.exampleFunc.returns = 123

        // when
        let result = example.example()

        // then
        XCTAssertEqual(result, 123)
    }

    func testNoArgsThrows() {
        // given
        example.exampleVoidThrowsFunc.throws = ExampleError()

        // when / then
        XCTAssertThrowsError(try example.exampleVoidThrows())
        XCTAssertTrue(example.exampleVoidThrowsFunc.called)
    }

    func testNoArgsNoThrow() throws {
        // when
        try example.exampleVoidThrows()

        // then
        XCTAssertTrue(example.exampleVoidThrowsFunc.called)
    }

    func testFixturableNoArgs() {
        // when
        let result = example.example()

        // then
        XCTAssertEqual(result, .fixture)
    }

    func testNoArgsOpt() {
        // when
        let result = example.exampleOpt()

        // then
        XCTAssertNil(result)
    }

    func testOptThrows() {
        // given
        example.exampleOptThrowsFunc.throws = ExampleError()

        // when / then
        XCTAssertThrowsError(try example.exampleOptThrows())
    }

    func testOptNoThrow() throws {
        // given
        example.exampleOptThrowsFunc.returns = 123

        // when
        let result = try self.example.exampleOptThrows()

        // then
        XCTAssertEqual(result, 123)
    }

    func testNoArgsVoid() {
        // when
        example.exampleVoid()

        // then
        XCTAssertTrue(example.exampleVoidFunc.called)
    }

    func testNoArgsVoidThrows() {
        // given
        example.exampleArgVoidThrows.throws = ExampleError()

        // when / then
        XCTAssertThrowsError(try example.exampleArgVoidThrows(a0: 0))
        XCTAssertTrue(example.exampleArgVoidThrows.called)
    }

    func testNoArgsVoidNoThrow() throws {
        // when
        try example.exampleArgVoidThrows(a0: 0)

        // then
        XCTAssertTrue(example.exampleArgVoidThrows.called)
    }

    func testArgVoid() {
        // when
        example.exampleArgVoid(a0: 0)

        // then
        XCTAssertEqual(example.exampleArgVoid.args, 0)
    }

    func testFixturableArg() {
        // when
        let result = example.exampleArg(a0: 0)

        // then
        XCTAssertEqual(example.exampleArg.args, 0)
        XCTAssertEqual(result, .fixture)
    }

    func testNonFixturable() {
        // given
        example.exampleNonFixturableFunc.returns = .init()

        // when
        let result = example.exampleNonFixturable()

        // then
        XCTAssertEqual(result, NonFixturable())
    }
}

private protocol Example {
    func example() -> Int
    func exampleThrows() throws -> Int
    func exampleOpt() -> Int?
    func exampleOptThrows() throws -> Int?
    func exampleVoid()
    func exampleVoidThrows() throws
    func exampleArg(a0: Int) -> Int
    func exampleArgVoid(a0: Int)
    func exampleArgVoidThrows(a0: Int) throws
    func exampleClosure(_ closure: @escaping (Int) -> Void)
    func exampleNonFixturable() -> NonFixturable
}

private struct NonFixturable: Equatable { }

private final class ExampleMock: Example {

    lazy var exampleFunc = FuncMock(self.example)
    func example() -> Int {
        exampleFunc.call()
    }

    lazy var exampleThrowsFunc = FuncMock(self.exampleThrows)
    func exampleThrows() throws -> Int {
        try exampleThrowsFunc.callThrows()
    }

    lazy var exampleOptFunc = FuncMock(self.exampleOpt)
    func exampleOpt() -> Int? {
        exampleOptFunc.call()
    }

    lazy var exampleOptThrowsFunc = FuncMock(self.exampleOptThrows)
    func exampleOptThrows() throws -> Int? {
        try exampleOptThrowsFunc.callThrows()
    }

    lazy var exampleVoidFunc = FuncMock(self.exampleVoid)
    func exampleVoid() {
        exampleVoidFunc.call()
    }

    lazy var exampleVoidThrowsFunc = FuncMock(self.exampleVoidThrows)
    func exampleVoidThrows() throws {
        try exampleVoidThrowsFunc.callThrows()
    }

    lazy var exampleArg = FuncMock(self.exampleArg)
    func exampleArg(a0: Int) -> Int {
        exampleArg.call(a0)
    }

    lazy var exampleArgVoid = FuncMock(self.exampleArgVoid)
    func exampleArgVoid(a0: Int) {
        exampleArgVoid.call(a0)
    }

    lazy var exampleArgVoidThrows = FuncMock(self.exampleArgVoidThrows)
    func exampleArgVoidThrows(a0: Int) throws {
        try exampleArgVoidThrows.callThrows(a0)
    }

    lazy var exampleClosure = FuncMock(self.exampleClosure)
    func exampleClosure(_ closure: @escaping (Int) -> Void) {
        exampleClosure.call(closure)
    }

    lazy var exampleNonFixturableFunc = FuncMock(self.exampleNonFixturable)
    func exampleNonFixturable() -> NonFixturable {
        exampleNonFixturableFunc.call()
    }
}

private struct ExampleError: Error { }
