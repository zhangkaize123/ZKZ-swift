//
//  main.swift
//  结构的属性与方法
//
//  Created by 张凯泽 on 15/10/10.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation

struct Student {
    var name = "无名氏"
    var age = 1
    var sex : String;
    func say()
    {
        
        print("我叫\(name) 今年\(age)了")
    }
}
//在对结构初始化的时候，开始的时候可以不对里边的属性进行赋值，例如var sex : String;但是在构建对象的时候必须进行赋值
var ls = Student(name: "ios", age: 43, sex: "man")
ls.name = "李四"
ls.age = 23
ls.say()