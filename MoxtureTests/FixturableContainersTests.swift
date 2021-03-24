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

final class FixturableContainersTests: XCTestCase {

    func testLabelAndConfigure() {
        // when
        let example: Example = .fixture

        // then
        XCTAssertEqual(example.optional, .fixture)
        XCTAssertEqual(try? example.result.get(), .fixture)
        XCTAssertEqual(example.array.first, .fixture)
        XCTAssertEqual(example.dictionary[.fixture], .fixture)
        XCTAssertEqual(example.set.randomElement(), .fixture)
        XCTAssertEqual(example.indexPath, .fixture)
    }
}

private struct Example: Fixturable {

    struct NonFixturable: Hashable { }

    var optional: Int?
    var result: Result<Int, Error>
    var array: [Int]
    var dictionary: [Int: Int]
    var set: Set<Int>
    var indexPath: IndexPath

    static func fixture(label: String, configure: (inout Example) -> Void) -> Example {
        makeFixture(label, configure, Self.init)
    }
}
