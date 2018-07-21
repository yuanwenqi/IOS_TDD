//
// Created by Wenqi Yuan  on 21/07/2018.
// Copyright (c) 2018 Wenqi Yuan . All rights reserved.
//

import Foundation
import UIKit
import SnapKit
class ExpenseTableCell:UITableViewCell{

    let priceLabel = UILabel()
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubview(priceLabel)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(10)
            make.right.equalTo(-10)
            make.bottom.equalTo(-10)
            make.width.equalTo(priceLabel.snp.height)
         }
    }

    func loadData(data:MyExpenseCellModel){
        self.textLabel?.text = data.title
        self.detailTextLabel?.text = data.payer
        self.priceLabel.text = data.payer
    }
}
