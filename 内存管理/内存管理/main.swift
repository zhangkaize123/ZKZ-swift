//
//  main.swift
//  内存管理
//
//  Created by 张凯泽 on 15/10/20.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation
//循环引用 对于可选类型 使用weak接触循环引用，非可选类型使用unowned

//使用可选类型
//class Person {
//    var name :String;
//    var age :Int;
//    var house :House?
//    init(name:String,age:Int)
//    {
//        self.name=name
//        self.age=age
//        print("\(name)被申请");
//    }
//    deinit{
//        print("人的空间被释放");
//    }
//}
//
//class House {
//    var name : String;
//    weak var person :Person?
//    init(name:String)
//    {
//        self.name=name;
//        print("\(name)被申请");
//    }
//    deinit{
//        print("房子空间被释放")
//    }
//    
//}
//var p :Person?
//var h :House?
//p=Person(name: "张三", age: 12)
//h=House(name: "洋房")
//p!.house=h;
//h!.person=p;

//非可选类型使用unowned
class Person {
    var name :String;
    var age :Int;
    unowned var house :House
    init(name:String,age:Int,house :House)
    {
        self.name=name
        self.age=age
        self.house=house
        print("\(name)被申请");
    }
    deinit{
        print("人的空间被释放");
    }
}

class House {
    var name : String;
     var person :Person?
    init(name:String)
    {
        self.name=name;
        print("\(name)被申请");
    }
    deinit{
        print("房子空间被释放")
    }
    
}
var p :Person?
var h :House?
h=House(name: "洋房")
p=Person(name: "sssss", age: 12, house: h!)
h!.person=p
p=nil;
h=nil;


/*
class Person {
    var name :String;
    var age :Int;
    
    init(name:String,age:Int)
    {
        self.name=name
        self.age=age
        print("\(name)被申请");
    }
    deinit{
        print("人的空间被释放");
    }
}
var p1 :Person?
p1=Person(name: "张三", age: 34)
var p2=p1
var p3=p1
p1=nil
p2=nil
p3=nil
*/


