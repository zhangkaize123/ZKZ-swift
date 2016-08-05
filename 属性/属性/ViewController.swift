//
//  ViewController.swift
//  属性
//
//  Created by 张凯泽 on 15-9-15.
//  Copyright (c) 2015年 wyzc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var buttontap: UIButton!
    var arr : Array<Double> = Array<Double>()
    var arr2 = [1,2,3]
    var yuanzu = ("zkz",3,"tt")
    var tempdouble : Double {
        get{
            return NSNumberFormatter().numberFromString(showLabel.text!)!.doubleValue
        }
        set{
            
            showLabel.text = "\(newValue)"
        }
    }
    @IBAction func clickTap(sender: UIButton) {
        arr.append(tempdouble)
        print("\(arr)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //tempdouble=67
    zkztext="zkz"
        print(arr2)
        print(yuanzu.0)
        
    }
    
    var zkztext : NSString{
        get{
            return "45.0"
        }
        set{
            let zkztext2 : NSString = newValue
            print(zkztext2)
        }
    }
    
        
    
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            zkztext="123"
        // Dispose of any resources that can be recreated.
    }


}

