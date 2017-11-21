//
//  ExtDictionary.swift
//  SwiftKit
//
//  Created by 沈彬 on 2017/11/10.
//

import Foundation

extension NSDictionary{
    func boolValue(key : String) -> Bool {
        var ret = Bool.init()
        let obj = self.value(forKey: key)
        if obj != nil && !(obj is NSNull) && obj is NSNumber  {
            let temp = obj as! NSNumber
            ret = temp.boolValue
        }else if obj is String  {
//            let temp = obj as! String
        }
        return ret
    }
    func stringValue(key : String) -> String {
        return String.init("")
    }
    func arrayValue(key : String) -> Array<Any> {
        return Array.init()
    }
    func intValue(key : String) -> Int {
        return Int.init(0)
    }
    func floatValue(key : String) ->  Float{
        return Float.init()
    }
    func doubleValue(key : String) ->  Double{
        return Double.init()
    }
    func numberValue(key : String) ->  NSNumber{
        return NSNumber.init()
    }
    func dictionaryValue(key : String) ->  Dictionary<String, Any>{
        return Dictionary.init()
    }
}
