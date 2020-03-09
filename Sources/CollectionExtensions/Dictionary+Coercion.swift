// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
//  Created by Sam Deane on 09/03/20.
//  All code (c) 2020 - present day, Elegant Chaos Limited.
// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

import Foundation

public extension Dictionary {
    subscript(stringWithKey key: Key) -> String? {
        guard let value = self[key] else { return nil }
        
        if let string = value as? String {
            return string
        }
        
        return String(describing: value)
    }

    subscript(intWithKey key: Key) -> Int? {
        guard let value = self[key] else { return nil }

        if let int = value as? Int {
            return int
        }

        if let double = value as? Double {
            return Int(double)
        }
        
        if let bool = value as? Bool {
            return bool ? 1 : 0
        }
        
        if let string = self[key] as? String {
            return Int(string)
        }
        
        return nil
    }

    subscript(doubleWithKey key: Key) -> Double? {
        guard let value = self[key] else { return nil }

        if let double = value as? Double {
            return double
        }

        if let int = value as? Int {
            return Double(int)
        }

        
        if let bool = value as? Bool {
            return bool ? 1.0 : 0.0
        }
        
        if let string = self[key] as? String {
            return Double(string)
        }
        
        return nil
    }

}
