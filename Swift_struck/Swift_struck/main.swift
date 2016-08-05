//
//  main.swift
//  Swift_struck
//
//  Created by 张凯泽 on 15/9/28.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation

//有参数构造函数
struct Student {
    var age = 0
    var name : String
    init(Name:String , Age : Int)
    {
        self.name=Name
        self.age = Age
    }
    
}
var stu = Student(Name: "zs", Age: 23)
print(stu.age , stu.name)
//----------------------------------------------------------------------------------------
//使用结构初始化的时候可以不对里边的属性进行赋值
struct Teacher {
    var name : String ;
    var age : UInt;
}
var t : Teacher = Teacher(name: "zhang", age: 32);
print(t.name)