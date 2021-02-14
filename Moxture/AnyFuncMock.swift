// @Copyright 2021 imnosov. All rights reserved.

public struct AnyFuncMock {

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
    public mutating func call(_ args: Any) -> Any? {
        calls.append(args)
        onCall?(args)
        return returns
    }

    @discardableResult
    public mutating func callThrows(_ args: Any) throws -> Any? {
        let result: Any? = call(args)
        if let error = self.throws { throw error }
        return result
    }

    public mutating func onCall(_ closure: @escaping (Any) -> Void) {
        onCall = closure
    }

    public mutating func reset() {
        returns = nil
        `throws` = nil
        calls = []
        onCall = nil
    }
}

public extension AnyFuncMock {
    mutating func call() -> Any? { call(()) }
    mutating func callThrows() throws -> Any? { try callThrows(()) }
}
