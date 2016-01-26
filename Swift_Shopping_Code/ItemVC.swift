//
//  ItemVC.swift
//  Swift_Shopping_Code
//
//  Created by zhaoyou on 16/1/26.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import UIKit

class ItemVC: UIViewController {
    var itemNameLabel: UILabel!
    var brandNameLabel: UILabel!
    var isBuyBtn: UIButton!
    
    var item: Item?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.creatContentView()
    }
        
    func creatContentView() {
        self.title = "商品详情"
        itemNameLabel = UILabel.init(frame: CGRectMake(0, 70, self.view.frame.width, 40))
//        itemNameLabel.backgroundColor = UIColor.greenColor()
        
        self.view.addSubview(itemNameLabel)
        
        brandNameLabel = UILabel.init(frame: CGRectMake(0, 120, self.view.frame.width, 40))
//        brandNameLabel.backgroundColor = UIColor.greenColor()
        
        self.view.addSubview(brandNameLabel)
        
        itemNameLabel.text = item?.itemName
        brandNameLabel.text = item?.brandName
        
        isBuyBtn = UIButton.init(type: UIButtonType.Custom)
        isBuyBtn.frame = CGRectMake(0, 200, self.view.frame.width, 40)
//        isBuyBtn.backgroundColor = UIColor.greenColor()
        isBuyBtn.setTitle("是否购买？", forState: UIControlState.Normal)
        isBuyBtn.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        isBuyBtn.addTarget(self, action: "isBuy:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(isBuyBtn)
    }
    
    func isBuy(sender: UIButton) {
        if item != nil {
            if item?.isBuy == false {
                item?.isBuy = true
                itemNameLabel.textColor = UIColor.greenColor()
            } else {
                item?.isBuy = false
                itemNameLabel.textColor = UIColor.redColor()
            }
            print(item?.description())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
