// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 02/03/21.
//  All code (c) 2021 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

public extension Dictionary {
    subscript<V>(unlessEmpty key: Key) -> V? where V: Collection {
        get {
            self[key] as? V
        }
        
        set(newValue) {
            if let value = newValue as? Value, let count = newValue?.count, count > 0 {
                self[key] = value
            }
        }
    }

    subscript(unlessEmpty key: Key) -> Value? where Value: Collection {
        get {
            self[key]
        }
        
        set(newValue) {
            if let count = newValue?.count, count > 0 {
                self[key] = newValue
            }
        }
    }

    func with<T>(keyName key: Key, do action: (T) -> ()) {
        if let value = self[key] as? T {
            action(value)
        }
    }
}
