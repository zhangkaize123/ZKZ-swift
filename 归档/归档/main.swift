//
//  main.swift
//  归档
//
//  Created by 张凯泽 on 15/11/10.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation



class Student:NSObject,NSCoding {
    var name :String;
    var age :Int32;
    init(byName name:String,byAge age:Int32)
    {
        self.name=name;
        self.age=age;
    }
    //编码
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.name, forKey: "Name")
        aCoder.encodeInt(self.age, forKey:"Age")
        
    }
    required init(coder aDecoder: NSCoder) {
        self.name=aDecoder.decodeObjectForKey("Name") as! String
        self.age=aDecoder .decodeInt32ForKey("Age")
    }
}

var student = Student(byName: "lisi", byAge: 20)
var student1 = Student(byName: "zhangsan", byAge: 21)
var arr:NSArray = [student,student1]

//*******************************************************************************
//对象归档与解档
//var b = NSKeyedArchiver.archiveRootObject(student, toFile: "arr.plist")
//if b
//{
//    print("归档成功")
//    
//}else{
//    
//    print("归档失败")
//}
//var s :Student  = NSKeyedUnarchiver.unarchiveObjectWithFile("arr.plist") as! Student
//print(s.name)

//var s = NSKeyedUnarchiver.unarchiveObjectWithFile("arr.plist")
//if let ss = s as? Student
//{
//    print(ss.name)
//}
//*******************************************************
//数组的归档与解档
//var b = NSKeyedArchiver.archiveRootObject(arr, toFile: "arr.plist")
//if b
//{
//    print("归档成功")
//
//}else{
//
//    print("归档失败")
//}
var s = NSKeyedUnarchiver.unarchiveObjectWithFile("arr.plist")
if let ss = s as? NSArray
{
    for person in ss{
        
        print(person.name)
        print(person.age)
    }
}
