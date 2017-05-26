//
//  MinionModeViewModel.swift
//  protocol-oriented-mvvm
//
//  Created by tangyuhua on 2017/5/26.
//  Copyright © 2017年 tangyuhua. All rights reserved.
//

import UIKit

//struct MinionModeViewModel : SwitchWithTextCellProtocol {
//    
//    var title = "Minmo Model!!!"
//    var switchOn = true
//    
//    var switchColor = UIColor.green
//    
//    
//    func onSwitchToggleOn(on: Bool) {
//        if on {
//            print("The Minions are here to stay!")
//        } else {
//            print("The Minions went out to play!")
//        }
//    }
//    
//}

struct MinionModeViewModel: SwitchWithTextCellDataSource {
    var title = "Minion Mode!!!"
    var switchOn = true
}




extension MinionModeViewModel: SwitchWithTextCellDelegate {
    
    var switchColor: UIColor {
        return .yellow
    }
    
    func onSwitchToggleOn(on: Bool) {
        if on {
            print("The Minions are here to stay!")
        } else {
            print("The Minions went out to play!")
        }
    }
    

    var textColor: UIColor {
       return .red
    }
    
    var font: UIFont {
        return UIFont.systemFont(ofSize: 14.0)
    }
    
    
    
}

