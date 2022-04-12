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
        
        /// If the value is an empty collection, don't set it, but don't touch any existing value.
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
        
        /// If the value is an empty collection, don't set it, but don't touch any existing value.
        set(newValue) {
            if let count = newValue?.count, count > 0 {
                self[key] = newValue
            }
        }
    }

    /// Perform an action with the value stored under a given key.
    /// If the key is empty or the value is the wrong type, does nothing.
    func with<T>(keyName key: Key, do action: (T) -> ()) {
        if let value = self[key] as? T {
            action(value)
        }
    }

    subscript<V: Equatable>(_ key: Key, skipIf skip: V) -> V? {
        /// Return the entry under a given key, unless it is a specific value.
        get {
            guard let value = self[key] as? V else { return nil }
            return value == skip ? nil : value
        }

        /// Set the entry for a key, unless we are passed a specific value, in
        /// which case we remove any existing value instead.
        set(newValue) {
            if newValue == skip {
                removeValue(forKey: key)
            } else {
                self[key] = newValue as? Value
            }
        }
    }
    
    subscript<V: BinaryFloatingPoint>(nonZero key: Key) -> V? {
        /// Return the entry under a given key, unless it is zero.
        get {
            guard let value = self[key] as? V else { return nil }
            return value == 0.0 ? nil : value
        }

        /// Set the entry for a key, unless we are passed zero, in
        /// which case we remove any existing value instead.
        set(newValue) {
            if newValue == 0.0 {
                removeValue(forKey: key)
            } else {
                self[key] = newValue as? Value
            }
        }
    }

    subscript<V: BinaryInteger>(nonZero key: Key) -> V? {
        /// Return the entry under a given key, unless it is zero.
        get {
            guard let value = self[key] as? V else { return nil }
            return value == 0 ? nil : value
        }
        
        /// Set the entry for a key, unless we are passed zero, in
        /// which case we remove any existing value instead.
        set(newValue) {
            if newValue == 0 {
                removeValue(forKey: key)
            } else {
                self[key] = newValue as? Value
            }
        }
    }

    subscript<V: Collection>(nonEmpty key: Key) -> V? {
        /// Return the entry under a given key, unless it is empty.
        get {
            guard let value = self[key] as? V else { return nil }
            return value.isEmpty ? nil : value
        }

        /// Set the entry for a key, unless we are passed an empty collection, in
        /// which case we remove any existing value instead.
        set(newValue) {
            if newValue?.isEmpty ?? true {
                removeValue(forKey: key)
            } else {
                self[key] = newValue as? Value
            }
        }
    }
    
}
