// @Copyright 2021 imnosov. All rights reserved.

// Set of extensions to handle Void as arguments and as a return type

public extension FuncMock where Args == Void {
    mutating func call() -> Return { call(()) }
    mutating func call() -> Return? { call(()) }
    mutating func callThrows() throws -> Return { try callThrows(()) }
    mutating func callThrows() throws -> Return? { try callThrows(()) }
}

public extension FuncMock where Return == Void {
    mutating func call(_ args: Args) {
        calls.append(args)
        onCall?(args)
    }
}

public extension FuncMock where Args == Void, Return == Void {
    mutating func call() {
        calls.append(())
        onCall?(())
    }
}
