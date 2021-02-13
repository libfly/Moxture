// @Copyright 2021 imnosov. All rights reserved.

public struct PropMock<Return> {

    public var set = Setter<Return>()
    public var get = Getter<Return>()

    public struct Setter<Return> {

        public var calls: [Return?] = []

        public var onCall: ((Return?) -> Void)?

        public var called: Bool { !calls.isEmpty }

        public var args: Return? { calls.first ?? nil }

        public mutating func call(_ arg: Return) {
            calls.append(arg)
            onCall?(arg)
        }

        public mutating func call(_ arg: Return?) {
            calls.append(arg)
            onCall?(arg)
        }

        public mutating func onCall(_ closure: @escaping (Return?) -> Void) {
            onCall = closure
        }

        public mutating func reset() {
            calls = []
            onCall = nil
        }
    }

    public struct Getter<Return> {

        public var returns: Return?

        public var calls: [Void] = []

        public var onCall: (() -> Void)?

        public var called: Bool { !calls.isEmpty }

        public mutating func call() -> Return {
            guard let returns = call() else {
                fatalError("returns is not set")
            }
            return returns
        }

        public mutating func call() -> Return? {
            calls.append(())
            onCall?()
            return returns
        }

        public mutating func onCall(_ closure: @escaping () -> Void) {
            onCall = closure
        }

        public mutating func reset() {
            returns = nil
            calls = []
            onCall = nil
        }
    }

    public var returns: Return? {
        get { get.returns }
        set { get.returns = newValue }
    }

    public mutating func reset() {
        get.reset()
        set.reset()
    }
}
