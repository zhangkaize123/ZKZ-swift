//
//  main.swift
//  类里边的函数使用
//
//  Created by 张凯泽 on 15/12/4.
//  Copyright (c) 2015年 rytong_zkz. All rights reserved.
//

import Foundation

class Person {
    var age : Int;
    var name : String;
    init(byAge Age :Int ,byName Name : String)
    {
        self.age = Age;
        self.name = Name;
    }
    func say()
    {
        print("我的名字叫\(name),我今年\(age)")
    }
}
var ls = Person(byAge: 23, byName: "李四");
ls.say()
