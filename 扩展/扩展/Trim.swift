//
//  Trim.swift
//  扩展
//
//  Created by 张凯泽 on 15/11/2.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation
extension NSString{
    func trming()->NSString
    {
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
}
extension String{
    subscript(index :Int)->String
        {
            let len = self.characters.count
            print(len)
            
            var startIndex = self.startIndex
            //获取起始的index
            startIndex=startIndex.advancedBy(index);
            var endIndex = self.endIndex
            
            endIndex = endIndex.advancedBy(-(len-index-1))
            
            var range = Range(start: startIndex, end: endIndex)
//            if len < index
//            {
//                endIndex = endIndex.advancedBy(-(len-index))
//                range = Range(start: startIndex, end: endIndex)
//                return self.substringWithRange(range)
//            }
        return self.substringWithRange(range)
    }
    
}