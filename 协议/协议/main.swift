//
//  main.swift
//  协议
//
//  Created by 张凯泽 on 15/11/7.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation

protocol Song{
    var ss : String{
        get
        set
        
    }
    func say()
}

class Student : Song {
    var ss = "张凯泽"
    func say() {
        print("我的名字是\(ss)正在唱歌")
    }
}
var s = Student()
s.ss = "李四"
s.say()
//print(s.ss)
protocol Say :Song{
    func ssay()
    
    
}
class Teacher : Say {
    var ss = "teacher"
    func say() {
        print("我的名字是\(ss)正在唱歌")
    }
    func ssay() {
        print("我的名字是\(ss)正在说话")
    }
}
var t = Teacher()
t.ss = "张三"
t.say()
t.ssay()

