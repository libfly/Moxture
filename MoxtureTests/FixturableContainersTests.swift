// @Copyright 2021 imnosov. All rights reserved.

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
