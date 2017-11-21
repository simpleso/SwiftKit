//
//  BaseCell.swift
//  SwiftKit
//
//  Created by 沈彬 on 2017/10/15.
//

import UIKit

class BaseCell: UITableViewCell {
    
    override func awakeFromNib() {
        self.selectionStyle = .none
        super.awakeFromNib()
    }
}
