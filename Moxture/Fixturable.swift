// @Copyright 2021 imnosov. All rights reserved.

public protocol Fixturable {
    static func fixture(label: String, configure: (inout Self) -> Void) -> Self
}

public extension Fixturable {
    static var fixture: Self {
        fixture(label: "fixture", configure: { _ in })
    }

    static func fixture(label: String) -> Self {
        fixture(label: label, configure: { _ in })
    }

    static func fixture(configure: (inout Self) -> Void) -> Self {
        fixture(label: "fixture", configure: configure)
    }
}
