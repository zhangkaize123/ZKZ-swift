//
//  main.swift
//  代理
//
//  Created by 张凯泽 on 15/11/7.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation
//创建应用程序类
class UIApplication {
    var name :String?
    var delegate : AppDelegate?
    func click()//单击事件
    {
        delegate!.click()
    }
    func Dbclick()//双击事件
    {
        delegate!.Dbclick()
    }
    func drag()//拖拽事件
    {
        delegate!.drag()
    }
}
//创建协议
protocol AppDelegate{
    func click()//单击事件
    func Dbclick()//双击事件
    func drag()//拖拽事件
}
class UIAppdelegate :AppDelegate {
    var name : String?
    func click()//单击事件
    {
        print("this is click")
    }
    func Dbclick()//双击事件
    {
        print("this is Dbclick")
    }
    func drag()//拖拽事件
    {
        print("this is drag")
    }
    
}
//创建应用程序
var app = UIApplication()
//创建应用程序代理
var appDelegate = UIAppdelegate()
//设置代理
app.delegate=appDelegate
//单击事件
app.click()
//双击事件
app.Dbclick()
//拖拽事件
app.drag()



