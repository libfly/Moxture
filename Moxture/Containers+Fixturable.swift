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

extension Optional: Fixturable where Wrapped: Fixturable {
    public static func fixture(label: String, configure: (inout Optional<Wrapped>) -> Void) -> Optional<Wrapped> {
        .some(.fixture(label: label))
    }
}

extension Result: Fixturable where Success: Fixturable {
    public static func fixture(label: String, configure: (inout Result<Success, Failure>) -> Void) -> Result<Success, Failure> {
        .success(.fixture(label: label))
    }
}

extension Array: Fixturable where Element: Fixturable {
    public static func fixture(label: String, configure: (inout Array<Element>) -> Void) -> Array<Element> {
        [.fixture(label: label)]
    }
}

extension Dictionary: Fixturable where Key: Fixturable, Value: Fixturable {
    public static func fixture(label: String, configure: (inout Dictionary<Key, Value>) -> Void) -> Dictionary<Key, Value> {
        [.fixture(label: label): .fixture(label: label)]
    }
}

extension Set: Fixturable where Element: Fixturable {
    public static func fixture(label: String, configure: (inout Set<Element>) -> Void) -> Set<Element> {
        Set([.fixture(label: label)])
    }
}

// MARK: Foundation

import Foundation

extension IndexPath: Fixturable {
    public static func fixture(label: String, configure: (inout IndexPath) -> Void) -> IndexPath {
        IndexPath(index: .fixture(label: label))
    }
}
