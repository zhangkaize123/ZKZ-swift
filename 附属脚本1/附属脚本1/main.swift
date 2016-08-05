//
//  main.swift
//  附属脚本1
//
//  Created by 张凯泽 on 15/11/4.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation

struct Student {
    var age : UInt=3
    subscript(index :UInt)->UInt
    {
        get{
            return index * age
         }
        set{
            //print(index)
            age = newValue
        }
    }
}

var ss = Student()
var i=ss[4]
print(i)
ss[3]=45
print(ss.age)

class Random {
    
    subscript(index :UInt32)->UInt32
        {
        return arc4random()%index
    }
    subscript(indexMin :UInt32 , indexMax : UInt32)->UInt32
    {
       return arc4random()%(indexMax-indexMin)+indexMin
    }
}


var random = Random()
var ii = random[100]
for var i=0 ; i<100 ; i++
{
    //print("随机数=",random[100])
    //print("随机数=",random[100,200])
}
//print(ii)
//________________________________________________________________________________

class Teacher {
    var age : UInt;
    var name : String
    subscript(str : String)->String
        {
        get{
            return str + name;
        }
        set{
            
            name = newValue
            print("newvalue = ",newValue)
            
        }
    }
    init(age : UInt,name:String)
    {
        self.age = age;
        self.name = name;
    }
}



var t : Teacher = Teacher(age: 12, name: "c++");

var tt = t["java"];
print(tt)
t["tt"] = "php"
print(t.name);









