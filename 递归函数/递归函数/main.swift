//
//  main.swift
//  递归函数
//
//  Created by 张凯泽 on 15/11/13.
//  Copyright © 2015年 rytong_zkz. All rights reserved.
//

import Foundation


func myPow2(a : Int,n:Int)->Int
{
    if n <= 0
    {
        return 1
    }
   return myPow2(a, n: n-1)*a
}
var number = myPow2(2, n: 3)
print(number)



