//
//  main.swift
//  9.15_enum
//
//  Created by 张凯泽 on 15-9-15.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

import Foundation

enum Derection{
    case Aaaa(Int,Int,Int)
    case Bbbb (String)
    
}
//Derection.Aaaa = 33;


var EnumTest = Derection.Aaaa(23,24,25)
EnumTest = .Bbbb("zkz")
EnumTest = .Aaaa(34,35,36)
switch EnumTest{
case .Aaaa(let a,let b,let c):
    if a==34
    {
    print("这个数字是\(a)")
    }
case .Bbbb(let str):
    print(str)
}