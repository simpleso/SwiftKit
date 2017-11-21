//
//  UIImage+Ext.swift
//  SwiftKit
//
//  Created by 沈彬 on 2017/10/15.
//

import UIKit

extension UIImage{
    func imageWithColor(color : UIColor) -> UIImage {
        let rect = CGRect.init(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor )
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}

extension TextField{
    @IBInspectable
    var placeholderColor: UIColor {
        get {
            return value(forKey: "_placeholderLabel.textColor") as! UIColor;
        }
        set {
            setValue(newValue, forKeyPath: "_placeholderLabel.textColor");
        }
    }
}
