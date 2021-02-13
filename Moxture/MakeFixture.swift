// @Copyright 2021 imnosov. All rights reserved.

// Convenient functions for generating fixtures, they suppose to use init method
// which arguments are substituted by `.fixture(label: label)`.

public func makeFixture<T>(_ label: String, _ conf: (inout T) -> Void, _ initializer: () -> T) -> T {
    var result = initializer()
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0) -> T) -> T {
    var result = initializer(.fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable, A14: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable, A14: Fixturable, A15: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable, A14: Fixturable, A15: Fixturable, A16: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable, A14: Fixturable, A15: Fixturable, A16: Fixturable, A17: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable, A14: Fixturable, A15: Fixturable, A16: Fixturable, A17: Fixturable, A18: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable, A14: Fixturable, A15: Fixturable, A16: Fixturable, A17: Fixturable, A18: Fixturable, A19: Fixturable>(_ label: String, _ conf: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    conf(&result)
    return result
}

