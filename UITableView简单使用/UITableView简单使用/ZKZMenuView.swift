//
//  ZKZMenuView.swift
//  UITableView简单使用
//
//  Created by 张凯泽 on 16/3/4.
//  Copyright © 2016年 rytong_zkz. All rights reserved.
//

import UIKit
import Foundation
class ZKZMenuView: UITableViewCell {
//    var imageView : UIImageView;
//    var textLabel : UILabel
//    var detailTextLabel : UILabel;
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let imageView : UIImageView = UIImageView.init();
        self.addSubview(imageView);
        let textLabel : UILabel = UILabel.init();
        self.addSubview(textLabel);
        let detailTextLabel : UILabel = UILabel.init();
        self.addSubview(detailTextLabel);
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
