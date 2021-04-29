//
//  HomeViewController.swift
//  SampleTableView02
//
//  Created by 野田凜太郎 on 2021/04/20.
//

import Foundation
import UIKit


class HomeViewController: UITableViewController, UITextFieldDelegate {
    

    
    var receiveData: Int = 0
    var homeTaskDatas: [HomeTaskData] = [HomeTaskData(title: "title", secCellDatas: nil)]

    //これはTableっていう名前がいいかも
    
    
    
    
    @IBAction func homeAddButtonTapped(_ sender: Any) {
         var alertTextField: UITextField?

         let alert = UIAlertController(
             title: "Edit Name",
             message: "Enter new name",
             preferredStyle: UIAlertController.Style.alert)
        
         alert.addTextField(
             configurationHandler: {(textField: UITextField!) in
                 alertTextField = textField
                //textField.text = self.homeTaskDatas[0].title
                 // textField.placeholder = "Mike"
                 // textField.isSecureTextEntry = true
         })
        //ボタン追加してます
         alert.addAction(
             UIAlertAction(
                 title: "Cancel",
                 style: UIAlertAction.Style.cancel,
                 handler: nil))
        //ボタン押したときにtextFieldが埋まってたらその値をタスクに追加。
         alert.addAction(
             UIAlertAction(
                 title: "OK",
                 style: UIAlertAction.Style.default) { _ in
                 if let text = alertTextField?.text {
                    self.homeTaskDatas.append(HomeTaskData(title: text, secCellDatas: nil))
                 }
                print(self.homeTaskDatas)
                self.tableView.reloadData()
             }
         )

         self.present(alert, animated: true, completion: nil)
     }

 
    
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
        return homeTaskDatas.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: HomeTaskCell = tableView.dequeueReusableCell(withIdentifier: "HomeTaskCell", for: indexPath) as! HomeTaskCell
        cell.accessoryType = .disclosureIndicator
        //cell.homeCellLabel.text = "Label"
        
        cell.homeCellLabel.text = homeTaskDatas[indexPath.row].title
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Segueを使った画面遷移を行う関数
        performSegue(withIdentifier: "FirstSegue", sender: nil)
        receiveData = indexPath.row
    }
    
    // 遷移先のViewControllerにデータを渡す関数。ここで遷移先のTable配列に値を渡せばいいのかな
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FirstSegue" {
            let vc = segue.destination as! SecondViewController
            vc.giveData = receiveData
        }
    }
    
}
