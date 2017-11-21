//
//  UIView+Layer.swift
//  SwiftKit
//  若需要其他扩展，仿照下面
//  Created by 沈彬 on 2017/10/15.
//

import UIKit

extension UIView{
    //圆角
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    //边框颜色
    @IBInspectable
    var borderColor: UIColor {
        get {
            return UIColor.init(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
    //边框宽度
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    //是否切除多余的
    @IBInspectable
    var toBounds: Bool {
        get {
            return layer.masksToBounds
        }
        set {
            layer.masksToBounds = newValue
        }
    }
    //阴影颜色
    @IBInspectable
    var shadowColor: UIColor {
        get {
            return UIColor.init(cgColor:layer.shadowColor!)
        }
        set {
            layer.shadowColor = newValue.cgColor
        }
    }
    //阴影的偏移
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    //阴影的圆角
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    //阴影的透明度
    @IBInspectable
    var shadowOpacity: CGFloat {
        get {
            return CGFloat.init(layer.shadowOpacity)
        }
        set {
            layer.shadowOpacity = Float(newValue)
        }
    }
}
