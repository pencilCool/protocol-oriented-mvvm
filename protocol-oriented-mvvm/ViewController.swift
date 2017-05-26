//
//  ViewController.swift
//  protocol-oriented-mvvm
//
//  Created by tangyuhua on 2017/5/26.
//  Copyright © 2017年 tangyuhua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tableView.register(SwitchWithTextTableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0;
    }
}


extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! SwitchWithTextTableViewCell
//        
//        cell.configure(withDelegate: MinionModeViewModel())
       
        let viewModel = MinionModeViewModel()
        
        cell.configure(withDataSource: viewModel, delegate: viewModel)
        return cell;
    }
}

