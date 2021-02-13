// @Copyright 2021 imnosov. All rights reserved.

// The implementation of initializers always routes to self.init(), this set of initializers
// is only required for argument deduction, so `PropMock` can be initialized
// as `PropMock(\Type.property)` without explicitly specifying generic types.

public extension PropMock {
    init<T>(_ keyPath: ReferenceWritableKeyPath<T, Return>) {
        self.init()
    }

    init<T>(_ keyPath: KeyPath<T, Return>) {
        self.init()
    }

    init<T>(_ keyPath: ReferenceWritableKeyPath<T, Return?>) {
        self.init()
    }

    init<T>(_ keyPath: KeyPath<T, Return?>) {
        self.init()
    }
}
