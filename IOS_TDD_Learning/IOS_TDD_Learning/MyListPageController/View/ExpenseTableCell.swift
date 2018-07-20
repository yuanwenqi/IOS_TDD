//
// Created by Wenqi Yuan  on 21/07/2018.
// Copyright (c) 2018 Wenqi Yuan . All rights reserved.
//

import Foundation
import UIKit
class ExpenseTableCell:UITableViewCell{
    let titleLabel = UILabel()
    let payerLabel = UILabel()
    let priceLabel = UILabel()
    init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: UITableViewCellStyle, reuseIdentifier: reuseIdentifier)
    }

    override class func load(data:MyExpenseCellModel) {
        super.load()

    }
}