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

// Convenient functions for generating fixtures, they suppose to use init method
// which arguments are substituted by `.fixture(label: label)`.

public func makeFixture<T>(_ label: String, _ configure: (inout T) -> Void, _ initializer: () -> T) -> T {
    var result = initializer()
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0) -> T) -> T {
    var result = initializer(.fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable, A14: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable, A14: Fixturable, A15: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable, A14: Fixturable, A15: Fixturable, A16: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable, A14: Fixturable, A15: Fixturable, A16: Fixturable, A17: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable, A14: Fixturable, A15: Fixturable, A16: Fixturable, A17: Fixturable, A18: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

public func makeFixture<T, A0: Fixturable, A1: Fixturable, A2: Fixturable, A3: Fixturable, A4: Fixturable, A5: Fixturable, A6: Fixturable, A7: Fixturable, A8: Fixturable, A9: Fixturable, A10: Fixturable, A11: Fixturable, A12: Fixturable, A13: Fixturable, A14: Fixturable, A15: Fixturable, A16: Fixturable, A17: Fixturable, A18: Fixturable, A19: Fixturable>(_ label: String, _ configure: (inout T) -> Void, _ initializer: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, A16, A17, A18, A19) -> T) -> T {
    var result = initializer(.fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label), .fixture(label: label))
    configure(&result)
    return result
}

