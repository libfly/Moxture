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
