//
// Created by Wenqi Yuan  on 20/07/2018.
// Copyright (c) 2018 Wenqi Yuan . All rights reserved.
//

import Foundation
public class MyExpenseCellModel{
    let title:String
    let payer:String
    let price:Float
    init(title:String,payer:String,price:Float){
        self.title = title
        self.payer = payer
        self.price = price
    }
}