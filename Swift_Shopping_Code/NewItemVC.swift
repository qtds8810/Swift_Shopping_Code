//
//  NewItemVC.swift
//  Swift_Shopping_Code
//
//  Created by zhaoyou on 16/1/26.
//  Copyright © 2016年 zhaoyouwang. All rights reserved.
//

import UIKit

protocol NewItemVCDelegate {
    func addNewItem(item: Item)
}

class NewItemVC: UIViewController {
    var itemNameField: UITextField!
    var brandNameField: UITextField!
    var item: Item?
//    var delegate: NewItemVCDelegate! = nil
//    var delegate = NewItemVCDelegate!()
    var delegate: NewItemVCDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.whiteColor()
        
        self.creatContentView()
    }
    
    func creatContentView() {
        let itemLabel = UILabel.init(frame: CGRectMake(0, 70, self.view.frame.size.width, 40))
        itemLabel.text = "商品名称"
//        itemLabel.textColor = UIColor.blackColor()
        self.view.addSubview(itemLabel)
        
        itemNameField = UITextField.init(frame: CGRectMake(0, 120, self.view.frame.size.width, 40))
        itemNameField.borderStyle = UITextBorderStyle.Line
        self.view.addSubview(itemNameField)
        
        let brandLabel = UILabel.init(frame: CGRectMake(0, 170, self.view.frame.size.width, 40))
        brandLabel.text = "商品品牌"
        self.view.addSubview(brandLabel)
        
        brandNameField = UITextField.init(frame: CGRectMake(0, 220, self.view.frame.size.width, 40))
        brandNameField.borderStyle = UITextBorderStyle.Line
        self.view.addSubview(brandNameField)
        
        let saveBtn = UIButton.init(type: UIButtonType.Custom)
        saveBtn.frame = CGRectMake(0, 270, self.view.frame.width, 40)
        saveBtn.backgroundColor = UIColor.lightGrayColor()
        saveBtn.setTitle("保存该商品", forState: UIControlState.Normal)
        saveBtn.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Normal)
        saveBtn.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Highlighted)
        saveBtn.addTarget(self, action: "saveBtnClick:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(saveBtn)
    }
    
    func saveBtnClick(sender: UIButton) {
        if itemNameField.text != "" && brandNameField.text != "" {
            item = Item(itemName: itemNameField.text!, brandName: brandNameField.text!)
            delegate?.addNewItem(item!)
            
            self.navigationController?.popViewControllerAnimated(true)
        } else {
            let alertController = UIAlertController(title: "温馨提醒", message: "您输入商品信息不完整哦", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "取消", style: .Cancel, handler: nil)
            alertController.addAction(cancelAction)
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
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
