//
//  main.swift
//  8.26Swift
//
//  Created by 张凯泽 on 15-8-26.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

import Foundation

var a :Int8 = 4
var b :Float = Float (a)

var c :Bool = false
var c1 : Character = "z"
//var d :Int16 = Int16 (c)
var str :String = c.description
//var str1 : String = b.description
//var d : Int = Int (c)
//var str2 : String = "\(c)"//把数值型，bool转化成字符串类型
//println(str2)
//var str3 : String = "\(c1)"
//println(str3)
var str4 : String = "123"
var c2 : Int?

//c2=str4.toInt
var c3 : Int?
//println(c3)
//println(c2)
var r : Int32?
print("\(r)")
var count : Int = 0
if count>50
{
    //println()
}
//使用switch做判断
//switch count
//{
//case 0:
//    println("\(count)是零")
//    fallthrough    //代表如果count＝0的时候输出为零，结束后还继续往下边执行，count是一
//case 1 :
//    println("\(count)是一")
//case 2 :
//    println("\(count)是二")
//case 3 :
//    println("\(count)是三")
//case 4 :
//    println("\(count)是四")
//default :
//    println("不是以上数字")
//}
//使用switch开关语句case中可以放并列的条件
//var score : Int = 0
//switch score/10
//{
//case 0,1,2,3,4,5 :
//println("不及格")
//case 6,7 :
//    println("及格")
//case 8 :
//    println("优良")
//case 9,10 :
//    println("优秀")
//default :
//    println("无效")
//}
//使用"..."或者是"..>"或者是"..<"
//var score1 : Int = 60
//switch score1
//{
//    
//case 0..<60 ://0到60之间的分数包括零，不包括60
//    println("不及格")
//case 60..<80 :
//    println("及格")
//case 80..<90:
//    println("优良")
//case 90...100 ://90 到100之间的分数 包括90和100
//    println("优秀")
//default :
//    println("无效分数")


    
//}
//let : String = possibleNumber = "1233dd"
let possibleNumber : String = "1233dd"
let convertedNumber = (possibleNumber)
print("\(convertedNumber)")
if convertedNumber != nil
{
    print("是一个数字")
}else{
    print("不是一个数字")
}


