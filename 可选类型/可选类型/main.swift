//
//  main.swift
//  可选类型
//
//  Created by 张凯泽 on 15/10/22.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation
var aa :Int?
aa=123
//1.判断可选类型可以通过 aa != nil 来进行判断是否为空
//2.通过赋值的方法 let a = aa 进行判断
//if aa != nil
//{
//    print(aa!)
//}else{
//    print("是一个Opetional类型")
//}
if let a = aa
{
    print(a)
}





class Teacher {
    var name :String;
    var salary :Int;
    init(name:String,salary :Int){
        self.name=name;
        self.salary=salary;
    }
    func say()
    {
        print("\(name)的工资是\(salary)")
    }
}
class Student {
    var name :String;
    var fee :Int;
    init(byName name :String , byFee fee :Int){
        self.name=name;
        self.fee=fee;
    }
    func say()
    {
        print("\(name)的工资是\(fee)")
    }
}
var t = Teacher(name: "张老师", salary: 4000);
var s = Student(byName: "张三", byFee: 5000);
var p  = [t,s];
//1.可以通过可选类型 赋值 as?来判断是否为这个类
//2.可以通过is判断是否为此类型的 类
//for person in p
//{
//    if let s = person as? Student
//    {
//        s.say()
//    }
//    if let t = person as? Teacher
//    {
//        t.say()
//    }
//}
for person in p
{
    if person is Student
    {
        s.say()
    }
    if person is Teacher
    {
        t.say()
    }
}