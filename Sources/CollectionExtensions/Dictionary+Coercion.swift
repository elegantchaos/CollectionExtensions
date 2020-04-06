// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 09/03/20.
//  All code (c) 2020 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

public extension Dictionary {
    subscript(stringWithKey key: Key) -> String? {
        return Coercion.asString(self[key])
    }

    subscript(intWithKey key: Key) -> Int? {
        return Coercion.asInt(self[key])
    }

    subscript(doubleWithKey key: Key) -> Double? {
        return Coercion.asDouble(self[key])
    }
    
    subscript(dateWithKey key: Key) -> Date? {
        return Coercion.asDate(self[key])
    }

}
