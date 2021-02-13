// @Copyright 2021 imnosov. All rights reserved.

extension Optional: Fixturable where Wrapped: Fixturable {
    public static func fixture(label: String, configure: (inout Optional<Wrapped>) -> Void) -> Optional<Wrapped> {
        .some(.fixture(label: label))
    }
}

extension Result: Fixturable where Success: Fixturable {
    public static func fixture(label: String, configure: (inout Result<Success, Failure>) -> Void) -> Result<Success, Failure> {
        .success(.fixture(label: label))
    }
}

extension Array: Fixturable where Element: Fixturable {
    public static func fixture(label: String, configure: (inout Array<Element>) -> Void) -> Array<Element> {
        [.fixture(label: label)]
    }
}

extension Dictionary: Fixturable where Key: Fixturable, Value: Fixturable {
    public static func fixture(label: String, configure: (inout Dictionary<Key, Value>) -> Void) -> Dictionary<Key, Value> {
        [.fixture(label: label): .fixture(label: label)]
    }
}

extension Set: Fixturable where Element: Fixturable {
    public static func fixture(label: String, configure: (inout Set<Element>) -> Void) -> Set<Element> {
        Set([.fixture(label: label)])
    }
}

// MARK: Foundation

import Foundation

extension IndexPath: Fixturable {
    public static func fixture(label: String, configure: (inout IndexPath) -> Void) -> IndexPath {
        IndexPath(index: .fixture(label: label))
    }
}
