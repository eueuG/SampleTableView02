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
    var giveData: Int = 0
    var secTaskList: [SecTaskData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Title"
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secTaskList.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SecTaskCell = tableView.dequeueReusableCell(withIdentifier: "SecTaskCell", for: indexPath) as! SecTaskCell
        
        cell.secTitleLabel.text = secTaskList[indexPath.row].title
        //cell.secTimeLabel.text = "1:54:50"
        
        return cell
    }
}
