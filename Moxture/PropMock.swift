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

public final class PropMock<Return> {

    public var set = Setter<Return>()
    public var get = Getter<Return>()

    public final class Setter<Return> {

        public var calls: [Return?] = []

        public var onCall: ((Return?) -> Void)?

        public var called: Bool { !calls.isEmpty }

        public var args: Return? { calls.first ?? nil }

        public func call(_ arg: Return) {
            calls.append(arg)
            onCall?(arg)
        }

        public func call(_ arg: Return?) {
            calls.append(arg)
            onCall?(arg)
        }

        public func onCall(_ closure: @escaping (Return?) -> Void) {
            onCall = closure
        }

        public func reset() {
            calls = []
            onCall = nil
        }
    }

    public final class Getter<Return> {

        public var returns: Return?

        public var calls: [Void] = []

        public var onCall: (() -> Void)?

        public var called: Bool { !calls.isEmpty }

        public func call() -> Return {
            guard let returns = call() else {
                fatalError("returns is not set")
            }
            return returns
        }

        public func call() -> Return? {
            calls.append(())
            onCall?()
            return returns
        }

        public func onCall(_ closure: @escaping () -> Void) {
            onCall = closure
        }

        public func reset() {
            returns = nil
            calls = []
            onCall = nil
        }
    }

    public var returns: Return? {
        get { get.returns }
        set { get.returns = newValue }
    }

    public func reset() {
        get.reset()
        set.reset()
    }
}
