//
//  ViewController.swift
//  控件的简单用法
//
//  Created by 张凯泽 on 16/3/4.
//  Copyright © 2016年 rytong_zkz. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController,UITextFieldDelegate {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //标签
        let frame1  = CGRectMake(0, 20, 320, 20);
        //设置frame
        let labeltest  = UILabel(frame: frame1);
        //设置文字
        labeltest.text = "ios";//
        //设置背景颜色
        labeltest.backgroundColor = UIColor.greenColor();
        //设置文字的居中
        labeltest.textAlignment = NSTextAlignment.Center;
        //设置字体大小
        labeltest.font = UIFont.systemFontOfSize(15);
        self.view.addSubview(labeltest);
        
        
        //按钮
        let frame : CGRect = CGRectMake(0, 60, 320, 30);
        let button : UIButton = UIButton(frame: frame);
        button .setTitle("登陆", forState: UIControlState.Normal);
        button.backgroundColor = UIColor.greenColor();
        //button.addTarget(self, action:"testClick", forControlEvents: UIControlEvents.TouchUpInside)
        //button.addTarget(self,action:"testClick",forControlEvents:.TouchUpInside);
        button.addTarget(self, action: Selector("testClick"), forControlEvents: UIControlEvents.TouchUpInside);
        self.view.addSubview(button);
        //textfiled输入框
        let textFrame : CGRect = CGRectMake(0, 100, 320, 30);
        let textField : UITextField = UITextField(frame: textFrame);
        textField.placeholder = "请输入"
        textField.backgroundColor = UIColor.greenColor();
        textField.delegate = self;
        self.view.addSubview(textField);
        
        
        
        
    }
    
    
//按钮点击事件
    func testClick()
    {
        print("按钮点击");
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?)
    {
        print("touchesEnded");
        
        
    }
    //点击return按钮退出键盘
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
    
}
 

