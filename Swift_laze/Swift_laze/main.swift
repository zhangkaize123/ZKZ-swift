//
//  main.swift
//  Swift_laze
//
//  Created by 张凯泽 on 15/11/12.
//  Copyright © 2015年 rytong_zkz. All rights reserved.
//

import Foundation

class Student {
    var age : Int
    var name : String
    lazy var fees : Int = {
        return  5
    }()
    init(name : String,age:Int)
    {
        self.name=name
        self.age=age
    }
    func say()
    {
        print("我的名字是\(name),今年\(age),学费是\(fees)")
    }
}
var s = Student(name: "张三", age: 12)
s.say()




class Demo{
    var url:NSString
    lazy var completeURL:NSString = {
        [unowned self] in
        if self.url.hasPrefix("http://"){
            return self.url
        }else{
            return "http://".stringByAppendingString(self.url as String)
        }
        }()
    init(url:NSString){
        self.url = url
    }
}