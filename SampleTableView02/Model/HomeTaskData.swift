//
//  TaskData.swift
//  SampleTableView02
//
//  Created by 野田凜太郎 on 2021/04/20.
//

import Foundation
import UIKit

struct HomeTaskData {
    //let id: Int
    var title: String
    //let time: String
    //var count: Int
    
    //ここに遷移先でTableになる配列を作っておくのが良いかも
    //nilは許容したい。親のセルを生成したときはこのセルを手入力するまで空にしたい。
    var secCellDatas: [SecTaskData]? = []
    
    
}
