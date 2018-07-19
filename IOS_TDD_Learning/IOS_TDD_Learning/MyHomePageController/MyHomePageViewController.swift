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
        tableView.delegate = self
        tableView.dataSource = self
        setup()
        addSubViews()

    }

    private func addSubViews() {
        self.view.addSubview(tableView)
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

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style:.default ,reuseIdentifier: "cell")
        cell.textLabel?.text = data[indexPath.row]
        return cell

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
}