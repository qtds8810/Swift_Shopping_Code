//
//  ViewController.swift
//  Swift_Shopping_Code
//
//  Created by zhaoyou on 16/1/26.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var myTableView: UITableView!
//    var myTableView = UITableView()
    
    var toBuyItems = [
        Item(itemName: "牛奶",brandName: "三元"),
        Item(itemName: "红烧牛肉面", brandName: "康师傅"),
        Item(itemName: "桃汁", brandName: "汇源"),
        Item(itemName: "巧克力", brandName: "德芙"),
        Item(itemName: "地板净", brandName: "滴露"),
        Item(itemName: "洗发水", brandName: "飘柔")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.creatContentView()
    }
    
    func creatContentView() {
//        self.navigationController?.navigationItem.title = "购物清单"
//        self.navigationController?.navigationBar.backgroundColor = UIColor.greenColor()
//        self.navigationController?.navigationBar
        self.title = "商品详情"
        
        self.automaticallyAdjustsScrollViewInsets = false
        myTableView = UITableView.init(frame: CGRectMake(0, 64, self.view.frame.width, self.view.frame.height - 64), style: .Plain)
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.rowHeight = 60
        
        self.view.addSubview(myTableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toBuyItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: "Cell")
        let item = toBuyItems[indexPath.row]
        cell.textLabel?.text = item.itemName
        cell.detailTextLabel?.text = item.brandName
        
        if item.isBuy {
            cell.textLabel?.textColor = UIColor.greenColor()
        } else {
            cell.textLabel?.textColor = UIColor.redColor()
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

