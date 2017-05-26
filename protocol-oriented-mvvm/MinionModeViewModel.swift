//
//  MinionModeViewModel.swift
//  protocol-oriented-mvvm
//
//  Created by tangyuhua on 2017/5/26.
//  Copyright © 2017年 tangyuhua. All rights reserved.
//

import UIKit

struct MinionModeViewModel : SwitchWithTextCellProtocol {
    
    var title = "Minmo Model!!!"
    var switchOn = true
    
    var switchColor = UIColor.green
    
    
    func onSwitchToggleOn(on: Bool) {
        if on {
            print("The Minions are here to stay!")
        } else {
            print("The Minions went out to play!")
        }
    }
    
}
