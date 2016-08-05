//
//  main.swift
//  初始化构造器
//
//  Created by 张凯泽 on 15/11/11.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation

class Student {
    
    var name : String
    
    var age :Int16
    init(byName name : String , byAge age : Int16)
    {
        self.name=name
        self.age=age
    }
    convenience init( name :String, age :Int16)
    {
        self.init(name:name,age:age)
    }
}
var s = Student(byName: "zhng", byAge: 34)
class Person {
    var name :String="张三"
        {
        willSet{
            print(newValue)
        }
        didSet{
            print(oldValue)
        }
    }
//    init(name:String)
//    {
//        self.name=name
//    }
}
var p = Person()
p.name="李四"

