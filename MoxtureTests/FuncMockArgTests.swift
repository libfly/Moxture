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

final class FuncMockArgTests: XCTestCase {

    fileprivate var example: ExampleMock!

    override func setUp() {
        super.setUp()
        example = .init()
    }

    override func tearDown() {
        example = nil
        super.tearDown()
    }

    func test1Args() {
        // given
        example.example1.returns = 123

        // when
        let result = example.example1(a0: 0)

        // then
        XCTAssertEqual(result, 123)
        XCTAssertEqual(example.example1.args, 0)
    }

    func test2Args() {
        // given
        example.example2.returns = 123

        // when
        let result = example.example2(a0: 0, a1: 1)

        // then
        XCTAssertEqual(result, 123)
        XCTAssertEqual(example.example2.args?.0, 0)
        XCTAssertEqual(example.example2.args?.1, 1)
    }

    func test3Args() {
        // given
        example.example3.returns = 123

        // when
        let result = example.example3(a0: 0, a1: 1, a2: 2)

        // then
        XCTAssertEqual(result, 123)
        XCTAssertEqual(example.example3.args?.0, 0)
        XCTAssertEqual(example.example3.args?.1, 1)
        XCTAssertEqual(example.example3.args?.2, 2)
    }

    func test4Args() {
        // given
        example.example4.returns = 123

        // when
        let result = example.example4(a0: 0, a1: 1, a2: 2, a3: 3)

        // then
        XCTAssertEqual(result, 123)
        XCTAssertEqual(example.example4.args?.0, 0)
        XCTAssertEqual(example.example4.args?.1, 1)
        XCTAssertEqual(example.example4.args?.2, 2)
        XCTAssertEqual(example.example4.args?.3, 3)
    }

    func test5Args() {
        // given
        example.example5.returns = 123

        // when
        let result = example.example5(a0: 0, a1: 1, a2: 2, a3: 3, a4: 4)

        // then
        XCTAssertEqual(result, 123)
        XCTAssertEqual(example.example5.args?.0, 0)
        XCTAssertEqual(example.example5.args?.1, 1)
        XCTAssertEqual(example.example5.args?.2, 2)
        XCTAssertEqual(example.example5.args?.3, 3)
        XCTAssertEqual(example.example5.args?.4, 4)
    }

    func test6Args() {
        // given
        example.example6.returns = 123

        // when
        let result = example.example6(a0: 0, a1: 1, a2: 2, a3: 3, a4: 4, a5: 5)

        // then
        XCTAssertEqual(result, 123)
        XCTAssertEqual(example.example6.args?.0, 0)
        XCTAssertEqual(example.example6.args?.1, 1)
        XCTAssertEqual(example.example6.args?.2, 2)
        XCTAssertEqual(example.example6.args?.3, 3)
        XCTAssertEqual(example.example6.args?.4, 4)
        XCTAssertEqual(example.example6.args?.5, 5)
    }

    func test7Args() {
        // given
        example.example7.returns = 123

        // when
        let result = example.example7(a0: 0, a1: 1, a2: 2, a3: 3, a4: 4, a5: 5, a6: 6)

        // then
        XCTAssertEqual(result, 123)
        XCTAssertEqual(example.example7.args?.0, 0)
        XCTAssertEqual(example.example7.args?.1, 1)
        XCTAssertEqual(example.example7.args?.2, 2)
        XCTAssertEqual(example.example7.args?.3, 3)
        XCTAssertEqual(example.example7.args?.4, 4)
        XCTAssertEqual(example.example7.args?.5, 5)
        XCTAssertEqual(example.example7.args?.6, 6)
    }

    func test8Args() {
        // given
        example.example8.returns = 123

        // when
        let result = example.example8(a0: 0, a1: 1, a2: 2, a3: 3, a4: 4, a5: 5, a6: 6, a7: 7)

        // then
        XCTAssertEqual(result, 123)
        XCTAssertEqual(example.example8.args?.0, 0)
        XCTAssertEqual(example.example8.args?.1, 1)
        XCTAssertEqual(example.example8.args?.2, 2)
        XCTAssertEqual(example.example8.args?.3, 3)
        XCTAssertEqual(example.example8.args?.4, 4)
        XCTAssertEqual(example.example8.args?.5, 5)
        XCTAssertEqual(example.example8.args?.6, 6)
        XCTAssertEqual(example.example8.args?.7, 7)
    }

    func test9Args() {
        // given
        example.example9.returns = 123

        // when
        let result = example.example9(a0: 0, a1: 1, a2: 2, a3: 3, a4: 4, a5: 5, a6: 6, a7: 7, a8: 8)

        // then
        XCTAssertEqual(result, 123)
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

    func test10Args() {
        // given
        example.example10.returns = 123

        // when
        let result = example.example10(a0: 0, a1: 1, a2: 2, a3: 3, a4: 4, a5: 5, a6: 6, a7: 7, a8: 8, a9: 9)

        // then
        XCTAssertEqual(result, 123)
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
    func example1(a0: Int) -> Int
    func example2(a0: Int, a1: Int) -> Int
    func example3(a0: Int, a1: Int, a2: Int) -> Int
    func example4(a0: Int, a1: Int, a2: Int, a3: Int) -> Int
    func example5(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int) -> Int
    func example6(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int) -> Int
    func example7(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int) -> Int
    func example8(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int, a7: Int) -> Int
    func example9(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int, a7: Int, a8: Int) -> Int
    func example10(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int, a7: Int, a8: Int, a9: Int) -> Int
}

private final class ExampleMock: Example {
    lazy var example1 = FuncMock(self.example1)
    func example1(a0: Int) -> Int {
        example1.call(a0)
    }

    lazy var example2 = FuncMock(self.example2)
    func example2(a0: Int, a1: Int) -> Int {
        example2.call((a0, a1))
    }

    lazy var example3 = FuncMock(self.example3)
    func example3(a0: Int, a1: Int, a2: Int) -> Int {
        example3.call((a0, a1, a2))
    }

    lazy var example4 = FuncMock(self.example4)
    func example4(a0: Int, a1: Int, a2: Int, a3: Int) -> Int {
        example4.call((a0, a1, a2, a3))
    }

    lazy var example5 = FuncMock(self.example5)
    func example5(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int) -> Int {
        example5.call((a0, a1, a2, a3, a4))
    }

    lazy var example6 = FuncMock(self.example6)
    func example6(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int) -> Int {
        example6.call((a0, a1, a2, a3, a4, a5))
    }

    lazy var example7 = FuncMock(self.example7)
    func example7(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int) -> Int {
        example7.call((a0, a1, a2, a3, a4, a5, a6))
    }

    lazy var example8 = FuncMock(self.example8)
    func example8(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int, a7: Int) -> Int {
        example8.call((a0, a1, a2, a3, a4, a5, a6, a7))
    }

    lazy var example9 = FuncMock(self.example9)
    func example9(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int, a7: Int, a8: Int) -> Int {
        example9.call((a0, a1, a2, a3, a4, a5, a6, a7, a8))
    }

    lazy var example10 = FuncMock(self.example10)
    func example10(a0: Int, a1: Int, a2: Int, a3: Int, a4: Int, a5: Int, a6: Int, a7: Int, a8: Int, a9: Int) -> Int {
        example10.call((a0, a1, a2, a3, a4, a5, a6, a7, a8, a9))
    }
}
