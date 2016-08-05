//
//  main.swift
//  扩展
//
//  Created by 张凯泽 on 15/11/2.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation
//给已经存在的结构或者类添加功能
//在swifth中可以给结构和类增加扩展，而在oc中只能给类增加扩展

//1.属性
//2.构造器
//3.方法
//4.下标
//1.属性
extension Double
{
    var km :Double
        {
        return self * 1000
    }
    var m :Double
        {
        return self
    }
    var cm :Double
        {
        return self * 0.01
    }
    var mm :Double
        {
        return self * 0.001
    }
}
var len = 123.4.km
//print(len)

//点结构
struct Point {
    var x :Double
    var y :Double
    init (x:Double,y:Double){
        self.x=x
        self.y=y
    }
}
//尺寸结构
struct Size {
    var width :Double
    var height :Double
    init(width :Double , height :Double){
        self.width=width
        self.height=height
    }
}
//矩形结构
struct Rect {
    var leftPoint :Point
    var size :Size
    init(leftPoint :Point , size :Size)
    {
        self.leftPoint=leftPoint
        self.size=size
    }

}
//定制点坐标
var rectPoint :Point = Point(x: 100, y: 100)
//定制尺寸
var rectSize :Size = Size(width: 100, height: 100)
//定制一个矩形
var r :Rect = Rect(leftPoint: rectPoint, size: rectSize)




//2.添加构造器
extension Rect {
    init(centerPoint :Point,size:Size)
    {
        let x = centerPoint.x-size.width*0.5
        let y = centerPoint.y - size.height*0.5
        self.init(leftPoint:Point(x: x, y: y),size: size)
    }
}
var rect :Rect = Rect(centerPoint: Point(x: 50, y: 50), size: Size(width: 100, height: 100))









//**************************************************************
//3.给类的方法添加扩展

var str : NSString = "  123  "
print(str)
 str = str.trming()
print(str)
//4.给下表增加扩展
var strr = "abcdefg"
print(strr[2])


