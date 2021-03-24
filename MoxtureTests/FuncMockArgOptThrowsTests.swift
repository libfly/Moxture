//
// Copyright (c) 2021 Moxture Contributors
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

import Moxture
import XCTest

final class FuncMockArgOptThrowsTests: XCTestCase {

    fileprivate var example: ExampleMock!

    override func setUp() {
        super.setUp()
        example = .init()
    }

    override func tearDown() {
        example = nil
        super.tearDown()
    }

    func test1Args() throws {
        // when
        let result = try example.example1(a0: 0)

        // then
        XCTAssertNil(result)
        XCTAssertEqual(example.example1.args, 0)
    }

    func test2Args() throws {
        // when
        let result = try example.example2(a0: 0, a1: 1)

        // then
        XCTAssertNil(result)
        XCTAssertEqual(example.example2.args?.0, 0)
        XCTAssertEqual(example.example2.args?.1, 1)
    }

    func test3Args() throws {
        // when
        let result = try example.example3(a0: 0, a1: 1, a2: 2)

        // then
        XCTAssertNil(result)
        XCTAssertEqual(example.example3.args?.0, 0)
        XCTAssertEqual(example.example3.args?.1, 1)
        XCTAssertEqual(example.example3.args?.2, 2)
    }

    func test4Args() throws {
        // when
        let result = try example.example4(a0: 0, a1: 1, a2: 2, a3: 3)

        // then
        XCTAssertNil(result)
        XCTAssertEqual(example.example4.args?.0, 0)
        XCTAssertEqual(example.example4.args?.1, 1)
        XCTAssertEqual(example.example4.args?.2, 2)
        XCTAssertEqual(example.example4.args?.3, 3)
    }

    func test5Args() throws {
        // when
        let result = try example.example5(a0: 0, a1: 1, a2: 2, a3: 3, a4: 4)

        // then
        XCTAssertNil(result)
        XCTAssertEqual(example.example5.args?.0, 0)
        XCTAssertEqual(example.example5.args?.1, 1)
        XCTAssertEqual(example.example5.args?.2, 2)
        XCTAssertEqual(example.example5.args?.3, 3)
        XCTAssertEqual(example.example5.args?.4, 4)
    }

    func test6Args() throws {
        // when
        let result = try example.example6(a0: 0, a1: 1, a2: 2, a3: 3, a4: 4, a5: 5)

        // then
        XCTAssertNil(result)
        XCTAssertEqual(example.example6.args?.0, 0)
        XCTAssertEqual(example.example6.args?.1, 1)
        XCTAssertEqual(example.example6.args?.2, 2)
        XCTAssertEqual(example.example6.args?.3, 3)
        XCTAssertEqual(example.example6.args?.4, 4)
        XCTAssertEqual(example.example6.args?.5, 5)
    }

    func test7Args() throws {
        // when
        let result = try example.example7(a0: 0, a1: 1, a2: 2, a3: 3, a4: 4, a5: 5, a6: 6)

        // then
        XCTAssertNil(result)
        XCTAssertEqual(example.example7.args?.0, 0)
        XCTAssertEqual(example.example7.args?.1, 1)
        XCTAssertEqual(example.example7.args?.2, 2)
        XCTAssertEqual(example.example7.args?.3, 3)
        XCTAssertEqual(example.example7.args?.4, 4)
        XCTAssertEqual(example.example7.args?.5, 5)
        XCTAssertEqual(example.example7.args?.6, 6)
    }

    func test8Args() throws {
        // when
        let result = try example.example8(a0: 0, a1: 1, a2: 2, a3: 3, a4: 4, a5: 5, a6: 6, a7: 7)

        // then
        XCTAssertNil(result)
        XCTAssertEqual(example.example8.args?.0, 0)
        XCTAssertEqual(example.example8.args?.1, 1)
        XCTAssertEqual(example.example8.args?.2, 2)
        XCTAssertEqual(example.example8.args?.3, 3)
        XCTAssertEqual(example.example8.args?.4, 4)
        XCTAssertEqual(example.example8.args?.5, 5)
        XCTAssertEqual(example.example8.args?.6, 6)
        XCTAssertEqual(example.example8.args?.7, 7)
    }

    func test9Args() throws {
        // when
        let result = try example.example9(a0: 0, a1: 1, a2: 2, a3: 3, a4: 4, a5: 5, a6: 6, a7: 7, a8: 8)

        // then
        XCTAssertNil(result)
        XCTAssertEqual(example.example9.args?.0, 0)
        XCTAssertEqual(example.example9.args?.1, 1)
        XCTAssertEqual(example.example9.args?.2, 2)
        XCTAssertEqual(example.example9.args?.3, 3)
        XCTAssertEqual(example.example9.args?.4, 4)
        XCTAssertEqual(example.example9.args?.5, 5)
        XCTAssertEqual(example.example9.args?.6, 6)
        XCTAssertEqual(example.example9.args?.7, 7)
        XCTAssertEqual(example.example9.args?.8, 8)
    }

    func test10Args() throws {
        // when
        let result = try example.example10(a0: 0, a1: 1, a2: 2, a3: 3, a4: 4, a5: 5, a6: 6, a7: 7, a8: 8, a9: 9)

        // then
        XCTAssertNil(result)
        XCTAssertEqual(example.example10.args?.0, 0)
        XCTAssertEqual(example.example10.args?.1, 1)
        XCTAssertEqual(example.example10.args?.2, 2)
        XCTAssertEqual(example.example10.args?.3, 3)
        XCTAssertEqual(example.example10.args?.4, 4)
        XCTAssertEqual(example.example10.args?.5, 5)
        XCTAssertEqual(example.example10.args?.6, 6)
        XCTAssertEqual(example.example10.args?.7, 7)
        XCTAssertEqual(example.example10.args?.8, 8)
        XCTAssertEqual(example.example10.args?.9, 9)
    }
}

private protocol Example {
    func example1(a0: Int) throws -> Int?
    func example2(a0: Int, a1: Int) throws -> Int?
    func example3(a0: Int, a1: Int, a2: Int) throws -> Int?
    func example4(a0: Int, a1: Int, a2: Int, a3: Int) throws -> Int?
    func example5(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int) throws -> Int?
    func example6(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int) throws -> Int?
    func example7(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int) throws -> Int?
    func example8(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int, a7: Int) throws -> Int?
    func example9(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int, a7: Int, a8: Int) throws -> Int?
    func example10(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int, a7: Int, a8: Int, a9: Int) throws -> Int?
}

private final class ExampleMock: Example {
    lazy var example1 = FuncMock(self.example1)
    func example1(a0: Int) throws -> Int? {
        try example1.callThrows(a0)
    }

    lazy var example2 = FuncMock(self.example2)
    func example2(a0: Int, a1: Int) throws -> Int? {
        try example2.callThrows((a0, a1))
    }

    lazy var example3 = FuncMock(self.example3)
    func example3(a0: Int, a1: Int, a2: Int) throws -> Int? {
        try example3.callThrows((a0, a1, a2))
    }

    lazy var example4 = FuncMock(self.example4)
    func example4(a0: Int, a1: Int, a2: Int, a3: Int) throws -> Int? {
        try example4.callThrows((a0, a1, a2, a3))
    }

    lazy var example5 = FuncMock(self.example5)
    func example5(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int) throws -> Int? {
        try example5.callThrows((a0, a1, a2, a3, a4))
    }

    lazy var example6 = FuncMock(self.example6)
    func example6(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int) throws -> Int? {
        try example6.callThrows((a0, a1, a2, a3, a4, a5))
    }

    lazy var example7 = FuncMock(self.example7)
    func example7(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int) throws -> Int? {
        try example7.callThrows((a0, a1, a2, a3, a4, a5, a6))
    }

    lazy var example8 = FuncMock(self.example8)
    func example8(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int, a7: Int) throws -> Int? {
        try example8.callThrows((a0, a1, a2, a3, a4, a5, a6, a7))
    }

    lazy var example9 = FuncMock(self.example9)
    func example9(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int, a7: Int, a8: Int) throws -> Int? {
        try example9.callThrows((a0, a1, a2, a3, a4, a5, a6, a7, a8))
    }

    lazy var example10 = FuncMock(self.example10)
    func example10(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int, a7: Int, a8: Int, a9: Int) throws -> Int? {
        try example10.callThrows((a0, a1, a2, a3, a4, a5, a6, a7, a8, a9))
    }
}
