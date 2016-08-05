//
//  ViewController.swift
//  斯坦福calculation
//
//  Created by 张凯泽 on 15/9/22.
//  Copyright © 2015年 rytong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        var arr : [Int] = [Int]()
        for index in 1 ... 5
        {
            arr.append(index)
        }
        //let aa = arr.removeLast()
         
        //print(arr)
        //print(aa)
    }

    var brain = CalculatorBrain()
    
    @IBOutlet weak var displayLabel: UILabel!
    var userIstheMiddleoffNumber = false
//点击数字
    @IBAction func accoutClick(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIstheMiddleoffNumber{
            displayLabel.text = displayLabel.text! + digit
        }
        else{
        displayLabel.text = digit
            userIstheMiddleoffNumber = true
        }
        
    }
    //点击输入键
    @IBAction func enterClick() {
        userIstheMiddleoffNumber = false
        if let result = brain.pushOperand(displayValue){
            displayValue = result
        }else{
            displayValue = 0
        }
        
    }
    //点击"+,-,*,/"键盘
    @IBAction func equalClick(sender: UIButton) {
        
        if userIstheMiddleoffNumber{
            enterClick()
        }
        if let operation = sender.currentTitle{
            if let result = brain.performOperation(operation)
            {
                displayValue = result
            }
            else{
                displayValue = 0
            }
        }
        
        
    }
    
    var displayValue : Double
        {
        get{
            return NSNumberFormatter().numberFromString(displayLabel.text!)!.doubleValue
        }
        set{
            displayLabel.text="\(newValue)"
        }
    }

}

