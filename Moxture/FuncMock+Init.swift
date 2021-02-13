// @Copyright 2021 imnosov. All rights reserved.

// The implementation of initializers always routes to self.init(), this set of initializers
// is only required for argument deduction, so `FuncMock` can be initialized
// as `FuncMock(self.function)` without explicitly specifying generic types.

public extension FuncMock {
    init(_ f: () -> Return) where Args == Void {
        self.init()
    }

    init(_ f: (Args) -> Return) {
        self.init()
    }

    init<A0, A1>(_ f: (A0, A1) -> Return) where Args == (A0, A1) {
        self.init()
    }

    init<A0, A1, A2>(_ f: (A0, A1, A2) -> Return) where Args == (A0, A1, A2) {
        self.init()
    }

    init<A0, A1, A2, A3>(_ f: (A0, A1, A2, A3) -> Return) where Args == (A0, A1, A2, A3) {
        self.init()
    }

    init<A0, A1, A2, A3, A4>(_ f: (A0, A1, A2, A3, A4) -> Return) where Args == (A0, A1, A2, A3, A4) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5>(_ f: (A0, A1, A2, A3, A4, A5) -> Return) where Args == (A0, A1, A2, A3, A4, A5) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6>(_ f: (A0, A1, A2, A3, A4, A5, A6) -> Return) where Args == (A0, A1, A2, A3, A4, A5, A6) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6, A7>(_ f: (A0, A1, A2, A3, A4, A5, A6, A7) -> Return) where Args == (A0, A1, A2, A3, A4, A5, A6, A7) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6, A7, A8>(_ f: (A0, A1, A2, A3, A4, A5, A6, A7, A8) -> Return) where Args == (A0, A1, A2, A3, A4, A5, A6, A7, A8) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9>(_ f: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9) -> Return) where Args == (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9) {
        self.init()
    }
}

public extension FuncMock {
    init(_ f: () throws -> Return) where Args == Void {
        self.init()
    }

    init(_ f: (Args) throws -> Return) {
        self.init()
    }

    init<A0, A1>(_ f: (A0, A1) throws -> Return) where Args == (A0, A1) {
        self.init()
    }

    init<A0, A1, A2>(_ f: (A0, A1, A2) throws -> Return) where Args == (A0, A1, A2) {
        self.init()
    }

    init<A0, A1, A2, A3>(_ f: (A0, A1, A2, A3) throws -> Return) where Args == (A0, A1, A2, A3) {
        self.init()
    }

    init<A0, A1, A2, A3, A4>(_ f: (A0, A1, A2, A3, A4) throws -> Return) where Args == (A0, A1, A2, A3, A4) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5>(_ f: (A0, A1, A2, A3, A4, A5) throws -> Return) where Args == (A0, A1, A2, A3, A4, A5) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6>(_ f: (A0, A1, A2, A3, A4, A5, A6) throws -> Return) where Args == (A0, A1, A2, A3, A4, A5, A6) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6, A7>(_ f: (A0, A1, A2, A3, A4, A5, A6, A7) throws -> Return) where Args == (A0, A1, A2, A3, A4, A5, A6, A7) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6, A7, A8>(_ f: (A0, A1, A2, A3, A4, A5, A6, A7, A8) throws -> Return) where Args == (A0, A1, A2, A3, A4, A5, A6, A7, A8) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9>(_ f: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9) throws -> Return) where Args == (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9) {
        self.init()
    }
}

public extension FuncMock {
    init(_ f: () -> Return?) where Args == Void {
        self.init()
    }

    init(_ f: (Args) -> Return?) {
        self.init()
    }

    init<A0, A1>(_ f: (A0, A1) -> Return?) where Args == (A0, A1) {
        self.init()
    }

    init<A0, A1, A2>(_ f: (A0, A1, A2) -> Return?) where Args == (A0, A1, A2) {
        self.init()
    }

    init<A0, A1, A2, A3>(_ f: (A0, A1, A2, A3) -> Return?) where Args == (A0, A1, A2, A3) {
        self.init()
    }

    init<A0, A1, A2, A3, A4>(_ f: (A0, A1, A2, A3, A4) -> Return?) where Args == (A0, A1, A2, A3, A4) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5>(_ f: (A0, A1, A2, A3, A4, A5) -> Return?) where Args == (A0, A1, A2, A3, A4, A5) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6>(_ f: (A0, A1, A2, A3, A4, A5, A6) -> Return?) where Args == (A0, A1, A2, A3, A4, A5, A6) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6, A7>(_ f: (A0, A1, A2, A3, A4, A5, A6, A7) -> Return?) where Args == (A0, A1, A2, A3, A4, A5, A6, A7) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6, A7, A8>(_ f: (A0, A1, A2, A3, A4, A5, A6, A7, A8) -> Return?) where Args == (A0, A1, A2, A3, A4, A5, A6, A7, A8) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9>(_ f: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9) -> Return?) where Args == (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9) {
        self.init()
    }
}

public extension FuncMock {
    init(_ f: () throws -> Return?) where Args == Void {
        self.init()
    }

    init(_ f: (Args) throws -> Return?) {
        self.init()
    }

    init<A0, A1>(_ f: (A0, A1) throws -> Return?) where Args == (A0, A1) {
        self.init()
    }

    init<A0, A1, A2>(_ f: (A0, A1, A2) throws -> Return?) where Args == (A0, A1, A2) {
        self.init()
    }

    init<A0, A1, A2, A3>(_ f: (A0, A1, A2, A3) throws -> Return?) where Args == (A0, A1, A2, A3) {
        self.init()
    }

    init<A0, A1, A2, A3, A4>(_ f: (A0, A1, A2, A3, A4) throws -> Return?) where Args == (A0, A1, A2, A3, A4) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5>(_ f: (A0, A1, A2, A3, A4, A5) throws -> Return?) where Args == (A0, A1, A2, A3, A4, A5) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6>(_ f: (A0, A1, A2, A3, A4, A5, A6) throws -> Return?) where Args == (A0, A1, A2, A3, A4, A5, A6) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6, A7>(_ f: (A0, A1, A2, A3, A4, A5, A6, A7) throws -> Return?) where Args == (A0, A1, A2, A3, A4, A5, A6, A7) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6, A7, A8>(_ f: (A0, A1, A2, A3, A4, A5, A6, A7, A8) throws -> Return?) where Args == (A0, A1, A2, A3, A4, A5, A6, A7, A8) {
        self.init()
    }

    init<A0, A1, A2, A3, A4, A5, A6, A7, A8, A9>(_ f: (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9) throws -> Return?) where Args == (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9) {
        self.init()
    }
}
