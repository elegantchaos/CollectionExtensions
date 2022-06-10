// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 10/06/22.
//  All code (c) 2022 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

//public extension Dictionary where Value == Any {
//    subscript<V>(appending key: Key) -> V? {
//        get {
//            (self[key] as? [V])?.first
//        }
//
//        set(newValue) {
//            if let newValue = newValue {
//                if var existing = self[key] as? [V] {
//                    existing.append(newValue)
//                    self[key] = existing
//                } else {
//                    self[key] = [newValue]
//                }
//            } else {
//                removeValue(forKey: key)
//            }
//        }
//    }
//}

public extension Dictionary {
    /// Append a new value to the list for a given key.
    /// If there is no list, create one.
    mutating func append<V>(_ value: V, forKey key: Key) where Value == [V] {
        if var existing = self[key] {
            existing.append(value)
            self[key] = existing
        } else {
            self[key] = [value]
        }
    }
}
