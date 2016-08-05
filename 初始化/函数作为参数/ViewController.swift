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
    var arr : Array<Double> = Array<Double>()
    
//等号方法
    @IBAction func calculationClick(sender: UIButton) {
        let calculationsymbol = sender.currentTitle!
        switch calculationsymbol{
        case "➕": performOperation({ $0 + $1 })
            
        case "➖" :performOperation({ $1 - $0 })
        default :break
        }
        
    }
    @IBAction func equalClick() {
        
        
        
    }
    //运算符号的方法
    
    //数字34
    @IBAction func number34(sender: UIButton) {
        let number34Str :String = sender.currentTitle!
        let number1 : Double = NSNumberFormatter().numberFromString(number34Str)!.doubleValue
        print(number1)
        arr.append(number1)
        print("arr=", arr)
        
    }
   //数字23
    @IBAction func number23(sender: UIButton) {
        let number23Str : String = sender.currentTitle!
        let number2 : Double = NSNumberFormatter().numberFromString(number23Str)!.doubleValue
        arr.append(number2)
        print("arr",arr);
    }
    
    func performOperation (operation :(number1 : Double , number2 :Double) ->Double)
    {
        //var displayValue = operation(number1 , number2)
        //print(displayValue)
        let displayValue=operation(number1: arr[0],number2: arr[1])
        print(displayValue)
    }
    
    //func zkzmutitable

}
