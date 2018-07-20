//
// Created by Wenqi Yuan  on 20/07/2018.
// Copyright (c) 2018 Wenqi Yuan . All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class MyListPageController:UIViewController,UITableViewDelegate,UITableViewDataSource{
    let data = [
        MyExpenseCellModel(title: "吃饭",payer: "张三",price:123.0),
        MyExpenseCellModel(title:"吃饭",payer:"李四",price:133.0),
        MyExpenseCellModel(title:"商品",payer:"张三",price:100.0)
    ]
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = title
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.view.addSubview(tableView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.tableView.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.bottom.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
          }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style:.default ,reuseIdentifier: "cell")
        cell.textLabel?.text = data[indexPath.row].title
        return cell

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
}