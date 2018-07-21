//
// Created by Wenqi Yuan  on 20/07/2018.
// Copyright (c) 2018 Wenqi Yuan . All rights reserved.
//
import UIKit

import SnapKit
class MyHomePageController:UIViewController,UITableViewDelegate,UITableViewDataSource{

    let data = ["1","2","3","4"]
    let cellid = "cell"
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
        setupTableView()
        setup()
    }

    private func setupTableView() {
        self.view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellid)
        tableView.register(UINib(nibName: cellid, bundle: nil), forCellReuseIdentifier: cellid)
        tableView.tableFooterView = UIView(frame: .zero)
    }

    private func setup() {
        self.view.backgroundColor = .cyan
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
        cell.textLabel?.text = data[indexPath.row]
        return cell

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newVC = MyListPageController()
        newVC.title = data[indexPath.row]
        self.navigationController!.pushViewController(newVC, animated: true)

    }
}