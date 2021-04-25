//
//  SecondViewController.swift
//  SampleTableView02
//
//  Created by 野田凜太郎 on 2021/04/24.
//

import Foundation
import UIKit

class SecondViewController: UITableViewController {
    
    
   // private func setUpNavigationItem() {
    //self.navigationItem.title = "Title"
    //}
    var secTaskDatas: [SecTaskData] = [
        SecTaskData(id: 0, time: "1:50:09", data: "2021/04/07", memo: "aiaia")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Title"
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SecTaskCell = tableView.dequeueReusableCell(withIdentifier: "SecTaskCell", for: indexPath) as! SecTaskCell
        
        cell.secTitleLabel.text = "Label"
        //cell.secTimeLabel.text = "1:54:50"
        
        return cell
    }
}
