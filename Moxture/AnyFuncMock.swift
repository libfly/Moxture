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

public final class AnyFuncMock {

    public var returns: Any?

    public var `throws`: Error?

    public var calls: [Any] = []

    public var onCall: ((Any) -> Void)?

    public var called: Bool { !calls.isEmpty }

    public var args: Any? { calls.first }

    public func args<T>(of: T.Type) -> T? {
        args as? T
    }

    public init() { }

    @discardableResult
    public func call(_ args: Any) -> Any? {
        calls.append(args)
        onCall?(args)
        return returns
    }

    @discardableResult
    public func callThrows(_ args: Any) throws -> Any? {
        let result: Any? = call(args)
        if let error = self.throws { throw error }
        return result
    }

    public func onCall(_ closure: @escaping (Any) -> Void) {
        onCall = closure
    }

    public func reset() {
        returns = nil
        `throws` = nil
        calls = []
        onCall = nil
    }
}

public extension AnyFuncMock {
    func call() -> Any? { call(()) }
    func callThrows() throws -> Any? { try callThrows(()) }
}
