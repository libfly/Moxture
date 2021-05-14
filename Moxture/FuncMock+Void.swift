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

// Set of extensions to handle Void as arguments and as a return type

public extension FuncMock where Args == Void {
    func call() -> Return { call(()) }
    func call() -> Return? { call(()) }
    func callThrows() throws -> Return { try callThrows(()) }
    func callThrows() throws -> Return? { try callThrows(()) }
}

public extension FuncMock where Return == Void {
    func call(_ args: Args) {
        calls.append(args)
        onCall?(args)
    }

    func callThrows(_ args: Args) throws {
        call(args)
        if let error = self.throws { throw error }
    }
}

public extension FuncMock where Args == Void, Return == Void {
    func call() {
        calls.append(())
        onCall?(())
    }

    func callThrows() throws {
        call()
        if let error = self.throws { throw error }
    }
}
