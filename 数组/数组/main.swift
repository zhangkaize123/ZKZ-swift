//
//  main.swift
//  数组
//
//  Created by 张凯泽 on 15/11/2.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation
// var 数组名 : [数据类型] ＝ ［数据，数据，数据］
//在初始化类的时候必须设置值
class Student {
    var name :String
    var age : Int
    init(name : String , age:Int)
    {
        self.name=name
        self.age = age
    }
}

var sz : [Student] = [Student(name: "张三",age: 12),Student(name: "李四",age: 23)]
print(sz[0].name)
sz.append(Student(name: "王武",age: 34))
print(sz[2].name)

var sz1 = [0,2,8,4,5]
//1.数组中增加元素
sz1.append(6)
print("增加sz1=\(sz1)")
//2.修改元素
//sz1[0]=7
//支持  ...  的操作
//sz1[0...1]=[]
print("修改sz1=\(sz1)")
//3.元素的个数
var count = sz.count
print(count)
//4.最后的元素
print(sz1.endIndex)
//5.第一个的元素
print(sz1.first!)
//6.移除元素
//sz1.removeAtIndex(1)
print(sz1)
//7.倒叙
var reverseSz : [Int] = [Int]()
for i in sz1.reverse()
{
    reverseSz.append(i)
    //print(i)
}
print("reverseSz=",reverseSz)
//var reverseSz = sz1.reverse()
//8.排序
var sz3=sz1.sort(>)
print("排序sz3=",sz3)
//定制一个空的的数组
var sz4 = [Int]()
sz4.append(1)
sz4.append(4)
sz4.append(6)
sz4.append(9)
print("sz4=",sz4)
//9.插入一个元素
sz4.insert(8, atIndex: 0)
print("插入一个元素sz4=",sz4)
//定制空的数组
var sz5 = Array(count: 5, repeatedValue: 5)
print("sz5=",sz5)

var s : Array = [AnyObject]()

s.append(3)
s.append(4.5)
s.append(Student(name: "李四",age: 45))
print(s)
//在函数中如何数组
func sum(arr : [Student])->Int
{
    var s :Int = 0
    for a in arr
    {
        s += a.age
    }
    return s
}
print("sz =",sum(sz))
//*************************************************************************************
//使用oc类型的数组

var s1 :NSMutableArray = NSMutableArray()
s1.addObject(NSValue(point: CGPointMake(1, 1)))
s1.addObject(NSValue(point: CGPointMake(2, 2)))
s1.addObject(NSValue(point: CGPointMake(3, 3)))
for p in s1
{
    var b = p.pointValue
    print("b=",b)
}



