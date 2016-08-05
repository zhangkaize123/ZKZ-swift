//
//  main.swift
//  Swift_Mutating
//
//  Created by 张凯泽 on 15/11/12.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation

//虽然结构体和枚举可以定义自己的方法，但是默认情况下，实例方法中是不可以修改值类型的属性

struct Point {
    var x : Int
    var y :Int
    
    init(x:Int,y:Int){
        self.x=x;
        self.y=y;
    }
    //加上mutating可以改变属性的值
    mutating func changePointValue(x:Int,y:Int){
        self.x += x
        self.y += y
    }
}