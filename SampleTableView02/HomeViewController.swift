//
//  HomeViewController.swift
//  SampleTableView02
//
//  Created by 野田凜太郎 on 2021/04/20.
//

import Foundation
import UIKit

class HomeViewController: UITableViewController, UITextFieldDelegate {
    

    
    
    var homeTaskDatas: [HomeTaskData] = [
        HomeTaskData(id: 0, title: "Working", time: , count: 0)]
    
    
    
    
    
//    @IBAction func alert(_ sender: Any) {
//        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
//                alert.title = "ここにタイトル"
//                alert.message = "メッセージ"
//
//                alert.addTextField(configurationHandler: {(textField) -> Void in
//                    textField.delegate = self
//                })
//
//                //追加ボタン
//                alert.addAction(
//                    UIAlertAction(
//                        title: "追加",
//                        style: .default,
//                        handler: {(action) -> Void in
//                    self.hello(action.title!)
//                })
//                )
//
//                //キャンセルボタン
//                alert.addAction(
//                UIAlertAction(
//                    title: "キャンセル",
//                    style: .cancel,
//                    handler: {(action) -> Void in
//                        self.hello(action.title!)
//                })
//                )
//
//                //アラートが表示されるごとにprint
//                self.present(
//                alert,
//                animated: true,
//                completion: {
//                    print("アラートが表示された")
//                })
//            }
//
//        }

    

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: HomeTaskCell = tableView.dequeueReusableCell(withIdentifier: "HomeTaskCell", for: indexPath) as! HomeTaskCell
        cell.accessoryType = .disclosureIndicator
        //cell.homeCellLabel.text = "Label"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Segueを使った画面遷移を行う関数
        performSegue(withIdentifier: "FirstSegue", sender: nil)
    }
    
    // 遷移先のViewControllerにデータを渡す関数
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FirstSegue" {
            let vc = segue.destination as! SecondViewController
            //vc.receiveData = giveData
        }
    }
    
}
