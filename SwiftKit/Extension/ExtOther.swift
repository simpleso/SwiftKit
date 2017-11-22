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
    
    @IBInspectable
    var leftMagin: CGFloat {
        get {
            let view = self.leftView
            if view == nil{
                return 0
            }else{
                return (view?.width)!
            }
        }
        set {
            let view = UIView()
            view.height = self.height
            view.width = newValue
            view.x = 0
            view.y = 0
            self.leftView = view
            self.leftViewMode = .always
        }
    }
}

extension UIBarButtonItem{
    public convenience init(_ target: Any?, action: Selector ,nomal : String,highlighted:String) {
        let btn = UIButton(type: .custom)
        btn.setImage(UIImage.init(named:nomal ), for: .normal)
        btn.setImage(UIImage.init(named:highlighted ), for: .highlighted)
        btn.width = (btn.currentImage?.size.width)!
        btn.height = (btn.currentImage?.size.height)!
        btn.addTarget(target, action: action, for: .touchUpInside)
        self.init(customView: btn)
    }
}
extension TextView{
    @IBInspectable
    var maginLeft: CGFloat {
        get {
           return self.contentInset.left
        }
        set {
            self.contentInset.left = newValue
        }
    }
    @IBInspectable
    var maginTop: CGFloat {
        get {
            return self.contentInset.top
        }
        set {
            self.contentInset.top = newValue
        }
    }
    @IBInspectable
    var maginRight: CGFloat {
        get {
            return self.contentInset.right
        }
        set {
            self.contentInset.right = newValue
        }
    }
    @IBInspectable
    var maginBottom: CGFloat {
        get {
            return self.contentInset.bottom
        }
        set {
            self.contentInset.bottom = newValue
        }
    }
}




