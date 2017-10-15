//
//  BaseCell.swift
//  SwiftKit
//
//  Created by 沈彬 on 2017/10/15.
//

import UIKit

class BaseCell: UITableViewCell {
    
//    static func cellWithTableView(tableView : UITableView) -> Any {
//        let cell = tableView.dequeueReusableCell(withIdentifier: NSString (utf8String: object_getClassName(self))! as String)
//        return cell
//    }
    
    override func awakeFromNib() {
        self.selectionStyle = .none
        super.awakeFromNib()
    }
}
