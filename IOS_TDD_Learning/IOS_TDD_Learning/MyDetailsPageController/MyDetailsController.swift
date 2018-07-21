//
// Created by Wenqi Yuan  on 21/07/2018.
// Copyright (c) 2018 Wenqi Yuan . All rights reserved.
//

import Foundation
import UIKit
import SnapKit
class MyDetailsPageController:UIViewController,UITableViewDelegate,UITableViewDataSource{
    let data = ["1","2","3"]
    let data2 = ["person1","person2","person3","person4"]
    let tableView = UITableView()
    let detailsCellId = "cell1"
    let divideCellId = "cell2"
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()

    }

    private func setupTableView() {
        self.view.addSubview(tableView)
        self.tableView.dataSource = self
        self.tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: detailsCellId)
        tableView.register(UINib(nibName: detailsCellId, bundle: nil), forCellReuseIdentifier: detailsCellId)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: divideCellId)
        tableView.register(UINib(nibName: divideCellId, bundle: nil), forCellReuseIdentifier: divideCellId)
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

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "basic information"
        }else{
            return  "who selected"
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
       if indexPath.section == 0{
           let cell = UITableViewCell(style: .subtitle, reuseIdentifier: detailsCellId)
           cell.textLabel?.text = data[indexPath.row]
           return cell
       }else{
           let cell = UITableViewCell(style: .default, reuseIdentifier: divideCellId)
           cell.textLabel?.text = data2[indexPath.row]
           return cell
       }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return data.count
        }else{
            return data2.count
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}