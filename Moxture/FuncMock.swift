// @Copyright 2021 imnosov. All rights reserved.

public struct FuncMock<Args, Return> {

    public var returns: Return?

    public var `throws`: Error?

    public var calls: [Args] = []

    public var onCall: ((Args) -> Void)?

    public var called: Bool { !calls.isEmpty }

    public var args: Args? { calls.first }

    public mutating func call(_ args: Args) -> Return {
        guard let returns = call(args) else {
            fatalError("returns is not set")
        }
        return returns
    }

    public mutating func call(_ args: Args) -> Return? {
        calls.append(args)
        onCall?(args)
        return returns
    }

    public mutating func callThrows(_ args: Args) throws -> Return {
        let result: Return = call(args)
        if let error = self.throws { throw error }
        return result
    }

    public mutating func callThrows(_ args: Args) throws -> Return? {
        let result: Return? = call(args)
        if let error = self.throws { throw error }
        return result
    }

    public mutating func onCall(_ closure: @escaping (Args) -> Void) {
        onCall = closure
    }

    public mutating func reset() {
        returns = nil
        `throws` = nil
        calls = []
        onCall = nil
    }
}
