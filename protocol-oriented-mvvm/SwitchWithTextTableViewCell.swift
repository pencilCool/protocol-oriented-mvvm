//
//  SwitchWithTextTableViewCell.swift
//  protocol-oriented-mvvm
//
//  Created by tangyuhua on 2017/5/26.
//  Copyright © 2017年 tangyuhua. All rights reserved.
//

import UIKit

//protocol SwitchWithTextCellProtocol {
//    var title: String {get}
//    var titleFont: UIFont {get}
//    var titleColor: UIColor {get}
//    
//    var switchOn: Bool { get }
//    var switchColor: UIColor { get}
//    
//    func onSwitchToggleOn(on: Bool)
//}
//
//extension SwitchWithTextCellProtocol {
//    
//    var title: String {
//        return "model title"
//    }
//    
//    var titleFont: UIFont {
//        return UIFont.systemFont(ofSize: 12)
//    }
//    
//    var titleColor: UIColor {
//        return .green
//    }
//    
//    var switchOn: Bool {
//        return true
//    }
//    
//    var switchColor: UIColor {
//        return .purple
//    }
//    
//}


protocol SwitchWithTextCellDataSource {
    var title: String { get }
    var switchOn: Bool { get }
}

protocol SwitchWithTextCellDelegate {
    func onSwitchToggleOn(on: Bool)
    
    var switchColor: UIColor { get }
    var textColor: UIColor { get }
    var font: UIFont { get }
}



class SwitchWithTextTableViewCell: UITableViewCell {

    
    @IBOutlet weak var switchButton: UISwitch!
    
    @IBOutlet weak var label: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
//    
//    func configure(withDelegate delegate: SwitchWithTextCellProtocol) {
//        
//        label.text = delegate.title
//        label.textColor = delegate.titleColor
//        switchButton.setOn(delegate.switchOn, animated: false)
//        switchButton.tintColor = delegate.switchColor
//        
//    }
    
    
    func configure(withDataSource dataSource: SwitchWithTextCellDataSource, delegate: SwitchWithTextCellDelegate?)
    {
            label.text = dataSource.title
        
            switchButton.setOn(dataSource.switchOn, animated: false)
            if let delegate = delegate {
                 switchButton.tintColor = delegate.switchColor
                 label.textColor = delegate.switchColor
            }
        
    }
    
    
    
    

}
