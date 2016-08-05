//
//  ViewController.swift
//  UITableView简单使用
//
//  Created by 张凯泽 on 16/3/4.
//  Copyright © 2016年 rytong_zkz. All rights reserved.
//

import UIKit
//import ZKZMenuView.swift
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        let frame : CGRect = CGRectMake(0, 0, 320, 480)
        let tableView : UITableView = UITableView.init(frame: frame, style: UITableViewStyle.Plain);
        
        self.view.addSubview(tableView);
        tableView.delegate = self;
        tableView.dataSource = self;
        
        
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cellStr : String = "cell";
        var cell = tableView.dequeueReusableCellWithIdentifier(cellStr);
        if cell == nil
        {
            //print("____________")
             cell = ZKZMenuView.init(style: UITableViewCellStyle.Default, reuseIdentifier: cellStr);
        }
        //cell!.textLabel!.text = "java"
        cell!.textLabel!.text = "java"
        return cell!;
    }


}

