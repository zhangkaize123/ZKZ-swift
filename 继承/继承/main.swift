//
//  main.swift
//  继承
//
//  Created by 张凯泽 on 15/11/12.
//  Copyright © 2015年 rytong_zkz. All rights reserved.
//

import Foundation

class Person {
    var name : String
    var age : Int
    init(name:String,age:Int){
        self.name=name
        self.age=age
    }
    func say()
    {
        print("name=\(name)age=\(age)")
        //print(name)
    }
    //如果父类其中的方法不允许继承可以使用 final 关键字
    final func action()
    {
        print("在进行运动");
    }
}

class Student: Person {
    var fee : Int
    init(fee:Int){
    //必须先把子类的属性先初始化完毕后在调用父的初始化（super.init）
        self.fee=fee
        super.init(name: "张三", age: 23)
        
    }
    //重写父类的方法时前面必须加 override 关键字
    override func say() {
        print("name=\(name),age=\(age),fee=\(fee)")
    }
    
}

var s = Student(fee: 3000)
s.say()

//s.name="zhangsan"