//
//  UIView+ExtFrame.swift
//  SwiftKit
//
//  Created by 沈彬 on 2017/10/15.
//

import UIKit

extension UIView{
    var bottomLeft: CGPoint {
        let x = self.frame.origin.x
        let y = self.frame.origin.y + self.frame.size.height
        return CGPoint.init(x: x, y: y)
    }
    var bottomRight: CGPoint {
        let x = self.frame.origin.x + self.frame.size.width
        let y = self.frame.origin.y + self.frame.size.height
        return CGPoint.init(x: x, y: y)
    }
    var topRight: CGPoint {
        let x = self.frame.origin.x
        let y = self.frame.origin.y
         return CGPoint.init(x: x, y: y)
    }
    var topLeft: CGPoint {
        let x = self.frame.origin.x + self.frame.size.width;
        let y = self.frame.origin.y;
        return CGPoint.init(x: x, y: y)
    }
    
    var height: CGFloat {
        get {
            return frame.height
        }
        set {
            var newframe = frame;
            newframe.size.height = newValue
            self.frame = newframe
        }
    }
    
    var width: CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            var newframe = frame
            newframe.size.width = newValue
            self.frame = newframe
        }
    }
    
    var origin: CGPoint {
        get {
            return frame.origin
        }
        set {
            var newframe = frame
            newframe.origin = newValue
            self.frame = newframe
        }
    }
    
    var size: CGSize {
        get {
            return frame.size
        }
        set {
            var newframe = self.frame;
            newframe.size = newValue;
            self.frame = newframe;
        }
    }
    
    var x: CGFloat {
        get {
            return center.x
        }
        set {
            self.center = CGPoint.init(x: newValue, y: self.center.y)
        }
    }
    
    var y: CGFloat {
        get {
            return center.x
        }
        set {
            self.center = CGPoint.init(x: self.center.x, y:newValue)
        }
    }
    
    func moveBy(mPoint : CGPoint) {
        var newcenter = self.center;
        newcenter.x += mPoint.x;
        newcenter.y += mPoint.y;
        self.center = newcenter;
    }
    
    func scaleBy(scaleFactor :  CGFloat) {
        var newframe = self.frame;
        newframe.size.width *= scaleFactor;
        newframe.size.height *= scaleFactor;
        self.frame = newframe;
    }
    
    func fitInSize(size : CGSize) {
        var scale : CGFloat;
        var newframe = self.frame;
        
        if ((newframe.size.height > 0) && (newframe.size.height > size.height)){
            scale = size.height / newframe.size.height;
            newframe.size.width *= scale;
            newframe.size.height *= scale;
        }
        
        if ((newframe.size.width > 0) && (newframe.size.width >= size.width)){
            scale = size.width / newframe.size.width;
            newframe.size.width *= scale;
            newframe.size.height *= scale;
        }
        self.frame = newframe;
    }
}

