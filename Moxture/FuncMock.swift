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

public final class FuncMock<Args, Return> {

    public var returns: Return?

    public var `throws`: Error?

    public var calls: [Args] = []

    public var onCall: ((Args) -> Void)?

    public var called: Bool { !calls.isEmpty }

    public var args: Args? { calls.first }

    public func call(_ args: Args) -> Return {
        guard let returns = call(args) else {
            fatalError("returns is not set")
        }
        return returns
    }

    public func call(_ args: Args) -> Return? {
        calls.append(args)
        onCall?(args)
        return returns
    }

    public func callThrows(_ args: Args) throws -> Return {
        calls.append(args)
        onCall?(args)
        if let error = self.throws { throw error }
        guard let returns = returns else {
            fatalError("returns is not set")
        }
        return returns
    }

    public func callThrows(_ args: Args) throws -> Return? {
        calls.append(args)
        onCall?(args)
        if let error = self.throws { throw error }
        return returns
    }

    public func onCall(_ closure: @escaping (Args) -> Void) {
        onCall = closure
    }

    public func reset() {
        returns = nil
        `throws` = nil
        calls = []
        onCall = nil
    }
}
