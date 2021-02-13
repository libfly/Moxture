// @Copyright 2021 imnosov. All rights reserved.

// This extension adds `Fixturable` support to `PropMock`, if return type is `Fixturable`,
// then it is not required to set `returns` property and `.fixture` is automatically returned.

public extension PropMock.Getter where Return: Fixturable {
    mutating func call() -> Return {
        call() ?? .fixture
    }
}
