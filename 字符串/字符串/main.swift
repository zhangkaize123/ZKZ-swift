//
//  main.swift
//  字符串
//
//  Created by 张凯泽 on 15/10/23.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation

var str = "abc"
//1.判断字符串是否为空
if str.isEmpty
{
    print("字符串为空")
}else{
    print("字符串不为空")
}
//2.字符串字符个数
print("字符串的个数",str.characters.count)
//3.字符串的添加
str.appendContentsOf("de")
print(str)
str += "fg"
print(str)
//提取字符串
//abcdefg

//1.substringFromIndex
//var strIndex = str.startIndex
//strIndex=strIndex.advancedBy(2)
////从某个index截取字符串一直到结束（不包括这个index）
//str=str.substringFromIndex(strIndex)
//print(str)

//2.substringToIndex
//var endIndex = str.endIndex
//endIndex=endIndex.advancedBy(-2)
//str = str.substringToIndex(endIndex)
//print(str)
//3.
var strr = "abcdefg"
var startIndex = strr.startIndex
//获取起始的index
startIndex=startIndex.advancedBy(2);
var endIndex = strr.endIndex
endIndex = endIndex.advancedBy(0)

var range = Range(start: startIndex, end: endIndex)

strr=strr.substringWithRange(range)
print("截取字符串",strr)
//var r=NSRangeFromString(str);
//print(r.length)
