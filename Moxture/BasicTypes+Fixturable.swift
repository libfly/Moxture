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

extension Bool: Fixturable {
    public static func fixture(label: String, configure: (inout Bool) -> Void) -> Bool {
        false
    }
}

extension Int: Fixturable {
    public static func fixture(label: String, configure: (inout Int) -> Void) -> Int {
        label.hashValue
    }
}

extension Double: Fixturable {
    public static func fixture(label: String, configure: (inout Double) -> Void) -> Double {
        Double(label.hashValue)
    }
}

extension Float: Fixturable {
    public static func fixture(label: String, configure: (inout Float) -> Void) -> Float {
        Float(label.hashValue)
    }
}

extension String: Fixturable {
    public static func fixture(label: String, configure: (inout String) -> Void) -> String {
        label
    }
}

// MARK: Int

extension Int8: Fixturable {
    public static func fixture(label: String, configure: (inout Int8) -> Void) -> Int8 {
        Int8(truncatingIfNeeded: label.hashValue)
    }
}

extension Int16: Fixturable {
    public static func fixture(label: String, configure: (inout Int16) -> Void) -> Int16 {
        Int16(truncatingIfNeeded: label.hashValue)
    }
}

extension Int32: Fixturable {
    public static func fixture(label: String, configure: (inout Int32) -> Void) -> Int32 {
        Int32(truncatingIfNeeded: label.hashValue)
    }
}

extension Int64: Fixturable {
    public static func fixture(label: String, configure: (inout Int64) -> Void) -> Int64 {
        Int64(truncatingIfNeeded: label.hashValue)
    }
}

// MARK: UInt

extension UInt: Fixturable {
    public static func fixture(label: String, configure: (inout UInt) -> Void) -> UInt {
        UInt(truncatingIfNeeded: label.hashValue)
    }
}

extension UInt8: Fixturable {
    public static func fixture(label: String, configure: (inout UInt8) -> Void) -> UInt8 {
        UInt8(truncatingIfNeeded: label.hashValue)
    }
}

extension UInt16: Fixturable {
    public static func fixture(label: String, configure: (inout UInt16) -> Void) -> UInt16 {
        UInt16(truncatingIfNeeded: label.hashValue)
    }
}

extension UInt32: Fixturable {
    public static func fixture(label: String, configure: (inout UInt32) -> Void) -> UInt32 {
        UInt32(truncatingIfNeeded: label.hashValue)
    }
}

extension UInt64: Fixturable {
    public static func fixture(label: String, configure: (inout UInt64) -> Void) -> UInt64 {
        UInt64(truncatingIfNeeded: label.hashValue)
    }
}

// MARK: CoreGraphics

import Foundation

extension Decimal: Fixturable {
    public static func fixture(label: String, configure: (inout Decimal) -> Void) -> Decimal {
        Decimal(label.hashValue)
    }
}

extension Data: Fixturable {
    public static func fixture(label: String, configure: (inout Data) -> Void) -> Data {
        label.data(using: .utf8) ?? Data()
    }
}

extension URL: Fixturable {
    public static func fixture(label: String, configure: (inout URL) -> Void) -> URL {
        URL(string: "https://www.\(label).com") ?? URL(fileURLWithPath: "")
    }
}

extension Date: Fixturable {
    public static func fixture(label: String, configure: (inout Date) -> Void) -> Date {
        // 4070908800 - 1 Jan 2099
        Date(timeIntervalSince1970: TimeInterval(abs(Int64(label.hashValue) % 4070908800 as Int64)))
    }
}

// MARK: CoreGraphics

import CoreGraphics

extension CGFloat: Fixturable {
    public static func fixture(label: String, configure: (inout CGFloat) -> Void) -> CGFloat {
        CGFloat(label.hashValue)
    }
}
