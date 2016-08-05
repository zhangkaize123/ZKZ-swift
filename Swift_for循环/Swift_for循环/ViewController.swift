//
//  ViewController.swift
//  Swift_for循环
//
//  Created by 张凯泽 on 15/9/28.
//  Copyright © 2015年 rytong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //第一种for 循环
        for var index : Int = 0 ;index<5 ; index++
        {
            //print(index)
        }
        //第二种for循环
        for var index = 0 ; index<5 ; index++
        {
            print(index);
        }
        //使用for。。。in。。。
        let a  = 1...5
        for temp in a
        {
           print(temp)
        }
        
        
    }

    
}

