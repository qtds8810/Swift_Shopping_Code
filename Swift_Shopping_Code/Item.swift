
//
//  Item.swift
//  Swift_Shopping_Code
//
//  Created by zhaoyou on 16/1/26.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import Foundation

class Item {
    var itemName: String = ""
    var brandName: String = ""
    var isBuy: Bool = false
    
    init(itemName: String, brandName: String, isBuy: Bool) {
        self.itemName = itemName
        self.brandName = brandName
        self.isBuy = isBuy
    }
    
    convenience init(itemName: String) {
        self.init(itemName: itemName, brandName: "", isBuy: false)
    }
    
    convenience init(itemName: String, brandName: String) {
        self.init(itemName: itemName, brandName: brandName, isBuy: false)
    }
    
    func description() -> String {
        return "itemName: \(itemName) brandName: \(brandName) isBuy: \(isBuy)"
    }
}
