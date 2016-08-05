//
//  main.swift
//  系统的结构体
//
//  Created by 张凯泽 on 15/10/22.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation
//点的用法
var p :NSPoint = CGPointMake(21, 5)
var p1 = NSPoint(x: 23, y: 56)

print(p)
//范围的用法
var range = NSRange(location: 1, length: 23)
print(range)
//矩形rect
var rect :NSRect = CGRectMake(23, 34, 45, 45);
var rect1 = NSRect(x: 1, y: 2, width: 34, height: 45)
