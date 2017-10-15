//
//  UITextField+Ext.swift
//  SwiftKit
//
//  Created by 沈彬 on 2017/10/15.
//

import UIKit

extension TextField{
    @IBInspectable
    var placeholderColor:UIColor  {
        get {
            return value(forKeyPath: "placeholderLaber.textColor") as! UIColor
        }
        set {
            setValue(newValue, forKey: "placeholderLaber.textColor")
        }
    }
}
