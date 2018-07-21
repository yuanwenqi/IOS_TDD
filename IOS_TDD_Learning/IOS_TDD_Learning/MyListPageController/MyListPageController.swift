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
    let reusedID = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = title
        setupTabView()
    }

    private func setupTabView() {
        self.view.addSubview(tableView)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reusedID)
        tableView.register(UINib(nibName: reusedID, bundle: nil), forCellReuseIdentifier: reusedID)
        tableView.tableFooterView = UIView(frame: .zero)
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

        let cell = ExpenseTableCell(style: .subtitle, reuseIdentifier: reusedID)
        cell.loadData(data: data[indexPath.row])
        return cell

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let newView = MyDetailsPageController()
        self.navigationController!.pushViewController(newView, animated: true)
    }
}