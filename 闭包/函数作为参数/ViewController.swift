//
//  ViewController.swift
//  函数作为参数
//
//  Created by 张凯泽 on 15/9/21.
//  Copyright © 2015年 rytong. All rights reserved.
//

import UIKit
/*
func 函数名 （参数变量 ： 类型 ，参数变量 ：类型）｛
｝
*/
class ViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        //第0步
         performOperation(zkzmutitable)
        
        //第1步
        performOperation({(op1 :Double ,op2 : Double ) -> Double in

            return op1 * op2
            })
        //第2步蜕化：由于switf具有数据推断能力所以可以简写成
        performOperation({(op1  ,op2  )  in
            
            return op1 * op2
        })
        //第3步
        performOperation({(op1  ,op2  )  in op1 * op2 })
        //第4步
        performOperation({ $0 * $1 })
        //第5步
        performOperation(*)
        
    }
    
}


func performOperation (operation :(number1 : Double , number2 :Double) ->Double)
{
    let displayValue = operation(number1: 2,number2: 3)
    print(displayValue)
}








func zkzmutitable(op1 :Double ,op2 : Double ) -> Double
{
    
    return op1 * op2
}



















