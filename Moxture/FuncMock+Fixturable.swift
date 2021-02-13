// @Copyright 2021 imnosov. All rights reserved.

// In case if return type is `Fixturable`then it is not required to set `returns` property of `FuncMock`,
// the mock returns `.fixture` as a default value.

public extension FuncMock where Return: Fixturable {
    mutating func call(_ args: Args) -> Return {
        call(args) ?? .fixture
    }
}

public extension FuncMock where Args == Void, Return: Fixturable {
    mutating func call() -> Return {
        call(()) ?? .fixture
    }
}
