//
//  BasePopupView.swift
//  SwiftKit
//
//  Created by 沈彬 on 2017/11/22.
//

import UIKit

protocol BasePopupViewDelegate {
    func close()
    func completion()
}

class BasePopupView: BaseView {
    
    var delegate : BasePopupViewDelegate?
    var contentView : UIView?
    
    func show() {
        self.alpha = 0
        if contentView != nil {
            contentView?.addSubview(self)
        }else{
            UIApplication.shared.keyWindow?.addSubview(self)
            UIView.animate(withDuration: 0.35, animations: {
                self.alpha = 1
            }, completion: { (b) in
                if (b){
                    self.delegate?.completion()
                }
            })
        }
    }
    
    func close() {
        self .removeFromSuperview()
        self.delegate?.close()
    }
}
