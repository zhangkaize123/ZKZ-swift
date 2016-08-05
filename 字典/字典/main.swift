//
//  main.swift
//  字典
//
//  Created by 张凯泽 on 15/11/2.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation

var dic :Dictionary = [1:"张三",2:"李四",3:"王武"]
//0.得到字典中的key
var keys = Array(dic.keys)
print(keys)
for key in keys.sort(>)
{
    print("key=",key)
    print(dic[key]!)
}
for (key,value) in dic
{
    print("\(key):\(value)")
}
//创建空的字典
var dic2 :Dictionary<Int , String> = Dictionary()
//字典增加元素
dic2.updateValue("zs", forKey: 1)
dic2.updateValue("ls", forKey: 2)
dic2.updateValue("ls", forKey: 3)
print(dic2[1]!)
//移除元素
dic2.removeValueForKey(1)
print(dic2)

//定制空的数组
var arr :Array<AnyObject> = Array()
arr.append(2)
arr.append(3.4)
print("****************************************************************")
//oc类型的字典－－－－－静态的字典
var dic3 :NSDictionary = ["1" : "张三","2":"李四"]
for (k,v) in dic3
{
    print("\(k):\(v)")
}

var dic4 :NSMutableDictionary = NSMutableDictionary()
dic4 .setObject("zhngsan", forKey: "1")
dic4 .setObject("lis", forKey: "2")
print("\(dic4)")


