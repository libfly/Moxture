// @Copyright 2021 imnosov. All rights reserved.

import Moxture
import XCTest

final class FixturableTests: XCTestCase {

    func testLabelAndConfigure() {
        // when
        let example1: Example = .fixture(label: "example1")
        let example2: Example = .fixture(label: "example2") {
            $0.bool = true
            $0.bool2 = true
        }

        // then
        XCTAssertNotEqual(example1.bool, example2.bool)
        XCTAssertNotEqual(example1.bool2, example2.bool2)
        XCTAssertNotEqual(example1.int, example2.int)
        XCTAssertNotEqual(example1.double, example2.double)
        XCTAssertNotEqual(example1.float, example2.float)
        XCTAssertNotEqual(example1.string, example2.string)
        XCTAssertNotEqual(example1.int8, example2.int8)
        XCTAssertNotEqual(example1.int16, example2.int16)
        XCTAssertNotEqual(example1.int32, example2.int32)
        XCTAssertNotEqual(example1.int64, example2.int64)
        XCTAssertNotEqual(example1.uint, example2.uint)
        XCTAssertNotEqual(example1.uint8, example2.uint8)
        XCTAssertNotEqual(example1.uint16, example2.uint16)
        XCTAssertNotEqual(example1.uint32, example2.uint32)
        XCTAssertNotEqual(example1.uint64, example2.uint64)
        XCTAssertNotEqual(example1.decimal, example2.decimal)
        XCTAssertNotEqual(example1.data, example2.data)
        XCTAssertNotEqual(example1.url, example2.url)
        XCTAssertNotEqual(example1.date, example2.date)
        XCTAssertNotEqual(example1.cgfloat, example2.cgfloat)
    }

    func testConfigure() {
        // when
        let example1: Example = .fixture {
            $0.string = "test"
        }
        let example2: Example = .fixture

        // then
        XCTAssertEqual(example1.string, "test")
        XCTAssertNotEqual(example1.string, example2.string)
    }

    func testInit20() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:int32:int64:uint:uint8:uint16:uint32:uint64:decimal:data:url:date:cgfloat:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
        XCTAssertEqual(example.int32, .fixture)
        XCTAssertEqual(example.int64, .fixture)
        XCTAssertEqual(example.uint, .fixture)
        XCTAssertEqual(example.uint8, .fixture)
        XCTAssertEqual(example.uint16, .fixture)
        XCTAssertEqual(example.uint32, .fixture)
        XCTAssertEqual(example.uint64, .fixture)
        XCTAssertEqual(example.decimal, .fixture)
        XCTAssertEqual(example.data, .fixture)
        XCTAssertEqual(example.url, .fixture)
        XCTAssertEqual(example.date, .fixture)
        XCTAssertEqual(example.cgfloat, .fixture)
    }

    func testInit19() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:int32:int64:uint:uint8:uint16:uint32:uint64:decimal:data:url:date:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
        XCTAssertEqual(example.int32, .fixture)
        XCTAssertEqual(example.int64, .fixture)
        XCTAssertEqual(example.uint, .fixture)
        XCTAssertEqual(example.uint8, .fixture)
        XCTAssertEqual(example.uint16, .fixture)
        XCTAssertEqual(example.uint32, .fixture)
        XCTAssertEqual(example.uint64, .fixture)
        XCTAssertEqual(example.decimal, .fixture)
        XCTAssertEqual(example.data, .fixture)
        XCTAssertEqual(example.url, .fixture)
        XCTAssertEqual(example.date, .fixture)
    }

    func testInit18() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:int32:int64:uint:uint8:uint16:uint32:uint64:decimal:data:url:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
        XCTAssertEqual(example.int32, .fixture)
        XCTAssertEqual(example.int64, .fixture)
        XCTAssertEqual(example.uint, .fixture)
        XCTAssertEqual(example.uint8, .fixture)
        XCTAssertEqual(example.uint16, .fixture)
        XCTAssertEqual(example.uint32, .fixture)
        XCTAssertEqual(example.uint64, .fixture)
        XCTAssertEqual(example.decimal, .fixture)
        XCTAssertEqual(example.data, .fixture)
        XCTAssertEqual(example.url, .fixture)
    }

    func testInit17() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:int32:int64:uint:uint8:uint16:uint32:uint64:decimal:data:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
        XCTAssertEqual(example.int32, .fixture)
        XCTAssertEqual(example.int64, .fixture)
        XCTAssertEqual(example.uint, .fixture)
        XCTAssertEqual(example.uint8, .fixture)
        XCTAssertEqual(example.uint16, .fixture)
        XCTAssertEqual(example.uint32, .fixture)
        XCTAssertEqual(example.uint64, .fixture)
        XCTAssertEqual(example.decimal, .fixture)
        XCTAssertEqual(example.data, .fixture)
    }

    func testInit16() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:int32:int64:uint:uint8:uint16:uint32:uint64:decimal:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
        XCTAssertEqual(example.int32, .fixture)
        XCTAssertEqual(example.int64, .fixture)
        XCTAssertEqual(example.uint, .fixture)
        XCTAssertEqual(example.uint8, .fixture)
        XCTAssertEqual(example.uint16, .fixture)
        XCTAssertEqual(example.uint32, .fixture)
        XCTAssertEqual(example.uint64, .fixture)
        XCTAssertEqual(example.decimal, .fixture)
    }

    func testInit15() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:int32:int64:uint:uint8:uint16:uint32:uint64:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
        XCTAssertEqual(example.int32, .fixture)
        XCTAssertEqual(example.int64, .fixture)
        XCTAssertEqual(example.uint, .fixture)
        XCTAssertEqual(example.uint8, .fixture)
        XCTAssertEqual(example.uint16, .fixture)
        XCTAssertEqual(example.uint32, .fixture)
        XCTAssertEqual(example.uint64, .fixture)
    }

    func testInit14() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:int32:int64:uint:uint8:uint16:uint32:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
        XCTAssertEqual(example.int32, .fixture)
        XCTAssertEqual(example.int64, .fixture)
        XCTAssertEqual(example.uint, .fixture)
        XCTAssertEqual(example.uint8, .fixture)
        XCTAssertEqual(example.uint16, .fixture)
        XCTAssertEqual(example.uint32, .fixture)
    }

    func testInit13() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:int32:int64:uint:uint8:uint16:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
        XCTAssertEqual(example.int32, .fixture)
        XCTAssertEqual(example.int64, .fixture)
        XCTAssertEqual(example.uint, .fixture)
        XCTAssertEqual(example.uint8, .fixture)
        XCTAssertEqual(example.uint16, .fixture)
    }

    func testInit12() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:int32:int64:uint:uint8:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
        XCTAssertEqual(example.int32, .fixture)
        XCTAssertEqual(example.int64, .fixture)
        XCTAssertEqual(example.uint, .fixture)
        XCTAssertEqual(example.uint8, .fixture)
    }

    func testInit11() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:int32:int64:uint:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
        XCTAssertEqual(example.int32, .fixture)
        XCTAssertEqual(example.int64, .fixture)
        XCTAssertEqual(example.uint, .fixture)
    }

    func testInit10() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:int32:int64:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
        XCTAssertEqual(example.int32, .fixture)
        XCTAssertEqual(example.int64, .fixture)
    }

    func testInit9() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:int32:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
        XCTAssertEqual(example.int32, .fixture)
    }

    func testInit8() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:int16:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
        XCTAssertEqual(example.int16, .fixture)
    }

    func testInit7() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:int8:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
        XCTAssertEqual(example.int8, .fixture)
    }

    func testInit6() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:string:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
        XCTAssertEqual(example.string, .fixture)
    }

    func testInit5() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:float:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
        XCTAssertEqual(example.float, .fixture)
    }

    func testInit4() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:double:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
        XCTAssertEqual(example.double, .fixture)
    }

    func testInit3() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:int:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
        XCTAssertEqual(example.int, .fixture)
    }

    func testInit2() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:bool2:))

        // then
        XCTAssertEqual(example.bool, .fixture)
        XCTAssertEqual(example.bool2, .fixture)
    }

    func testInit1() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.init(bool:))

        // then
        XCTAssertEqual(example.bool, .fixture)
    }

    func testInit0() {
        // when
        let example = makeFixture("fixture", { _ in }, Example.initialize)

        // then
        XCTAssertNotEqual(example.bool, .fixture)
        XCTAssertNotEqual(example.bool2, .fixture)
        XCTAssertNotEqual(example.int, .fixture)
        XCTAssertNotEqual(example.double, .fixture)
        XCTAssertNotEqual(example.float, .fixture)
        XCTAssertNotEqual(example.string, .fixture)
        XCTAssertNotEqual(example.int8, .fixture)
        XCTAssertNotEqual(example.int16, .fixture)
        XCTAssertNotEqual(example.int32, .fixture)
        XCTAssertNotEqual(example.int64, .fixture)
        XCTAssertNotEqual(example.uint, .fixture)
        XCTAssertNotEqual(example.uint8, .fixture)
        XCTAssertNotEqual(example.uint16, .fixture)
        XCTAssertNotEqual(example.uint32, .fixture)
        XCTAssertNotEqual(example.uint64, .fixture)
        XCTAssertNotEqual(example.decimal, .fixture)
        XCTAssertNotEqual(example.data, .fixture)
        XCTAssertNotEqual(example.url, .fixture)
        XCTAssertNotEqual(example.date, .fixture)
        XCTAssertNotEqual(example.cgfloat, .fixture)
    }
}

private struct Example: Fixturable {

    var bool: Bool = false
    var bool2: Bool = false
    var int: Int = 0
    var double: Double = 0
    var float: Float = 0
    var string: String = "example"
    var int8: Int8 = 0
    var int16: Int16 = 0
    var int32: Int32 = 0
    var int64: Int64 = 0
    var uint: UInt = 0
    var uint8: UInt8 = 0
    var uint16: UInt16 = 0
    var uint32: UInt32 = 0
    var uint64: UInt64 = 0
    var decimal: Decimal = 0
    var data: Data = "example".data(using: .utf8)!
    var url: URL = URL(fileURLWithPath: "")
    var date: Date = Date(timeIntervalSince1970: 0)
    var cgfloat: CGFloat = 0

    static func fixture(label: String, configure: (inout Example) -> Void) -> Example {
        makeFixture(label, configure, self.init(bool:bool2:int:double:float:string:int8:int16:int32:int64:uint:uint8:uint16:uint32:uint64:decimal:data:url:date:cgfloat:))
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16, int32: Int32, int64: Int64, uint: UInt, uint8: UInt8, uint16: UInt16, uint32: UInt32, uint64: UInt64, decimal: Decimal, data: Data, url: URL, date: Date, cgfloat: CGFloat) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
        self.int32 = int32
        self.int64 = int64
        self.uint = uint
        self.uint8 = uint8
        self.uint16 = uint16
        self.uint32 = uint32
        self.uint64 = uint64
        self.decimal = decimal
        self.data = data
        self.url = url
        self.date = date
        self.cgfloat = cgfloat
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16, int32: Int32, int64: Int64, uint: UInt, uint8: UInt8, uint16: UInt16, uint32: UInt32, uint64: UInt64, decimal: Decimal, data: Data, url: URL, date: Date) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
        self.int32 = int32
        self.int64 = int64
        self.uint = uint
        self.uint8 = uint8
        self.uint16 = uint16
        self.uint32 = uint32
        self.uint64 = uint64
        self.decimal = decimal
        self.data = data
        self.url = url
        self.date = date
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16, int32: Int32, int64: Int64, uint: UInt, uint8: UInt8, uint16: UInt16, uint32: UInt32, uint64: UInt64, decimal: Decimal, data: Data, url: URL) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
        self.int32 = int32
        self.int64 = int64
        self.uint = uint
        self.uint8 = uint8
        self.uint16 = uint16
        self.uint32 = uint32
        self.uint64 = uint64
        self.decimal = decimal
        self.data = data
        self.url = url
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16, int32: Int32, int64: Int64, uint: UInt, uint8: UInt8, uint16: UInt16, uint32: UInt32, uint64: UInt64, decimal: Decimal, data: Data) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
        self.int32 = int32
        self.int64 = int64
        self.uint = uint
        self.uint8 = uint8
        self.uint16 = uint16
        self.uint32 = uint32
        self.uint64 = uint64
        self.decimal = decimal
        self.data = data
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16, int32: Int32, int64: Int64, uint: UInt, uint8: UInt8, uint16: UInt16, uint32: UInt32, uint64: UInt64, decimal: Decimal) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
        self.int32 = int32
        self.int64 = int64
        self.uint = uint
        self.uint8 = uint8
        self.uint16 = uint16
        self.uint32 = uint32
        self.uint64 = uint64
        self.decimal = decimal
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16, int32: Int32, int64: Int64, uint: UInt, uint8: UInt8, uint16: UInt16, uint32: UInt32, uint64: UInt64) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
        self.int32 = int32
        self.int64 = int64
        self.uint = uint
        self.uint8 = uint8
        self.uint16 = uint16
        self.uint32 = uint32
        self.uint64 = uint64
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16, int32: Int32, int64: Int64, uint: UInt, uint8: UInt8, uint16: UInt16, uint32: UInt32) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
        self.int32 = int32
        self.int64 = int64
        self.uint = uint
        self.uint8 = uint8
        self.uint16 = uint16
        self.uint32 = uint32
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16, int32: Int32, int64: Int64, uint: UInt, uint8: UInt8, uint16: UInt16) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
        self.int32 = int32
        self.int64 = int64
        self.uint = uint
        self.uint8 = uint8
        self.uint16 = uint16
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16, int32: Int32, int64: Int64, uint: UInt, uint8: UInt8) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
        self.int32 = int32
        self.int64 = int64
        self.uint = uint
        self.uint8 = uint8
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16, int32: Int32, int64: Int64, uint: UInt) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
        self.int32 = int32
        self.int64 = int64
        self.uint = uint
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16, int32: Int32, int64: Int64) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
        self.int32 = int32
        self.int64 = int64
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16, int32: Int32) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
        self.int32 = int32
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8, int16: Int16) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
        self.int16 = int16
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String, int8: Int8) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
        self.int8 = int8
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float, string: String) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
        self.string = string
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double, float: Float) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
        self.float = float
    }

    init(bool: Bool, bool2: Bool, int: Int, double: Double) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
        self.double = double
    }

    init(bool: Bool, bool2: Bool, int: Int) {
        self.bool = bool
        self.bool2 = bool2
        self.int = int
    }

    init(bool: Bool, bool2: Bool) {
        self.bool = bool
        self.bool2 = bool2
    }

    init(bool: Bool) {
        self.bool = bool
    }

    static func initialize() -> Self {
        Example(bool: true, bool2: true)
    }
}
