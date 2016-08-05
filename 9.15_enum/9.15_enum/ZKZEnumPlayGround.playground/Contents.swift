//: Playground - noun: a place where people can play

import Cocoa
/*
自定义数据类型
enum  枚举的名称
{
case 名称
case 名称
}

*/
enum Week
{
    case Mo   //0
    case Tu   //1
    case thes  //2
    
}
var xq = Week.Mo//定义一个星期的变量
xq = .Tu
switch xq
{
case .Mo :
    print("星期1")
    
case .Tu :
    print("星期2")
case .thes :
    print("星期3")
    
default :
    break
}
print(xq.hashValue)//使用hashValue的时候可以判断这个变量在枚举中索引的位置，从0开始
/*
在switf 中switch如果几种情况都判断了就不用使用default，如果缺少一种情况或者几种酒要使用default
*/




enum mj :Int
{
    case v1=5,v2,v3,v4,v5,v6
    
}
var a = mj.v4
print(a.rawValue)//代表枚举的值
print(a.hashValue)//代表枚举的索引位置


//关联值
enum HuoWu
{
    case bianhao (Int,Int)//编号
    case mingcheng (String)    //名称
    
}

var a1 = HuoWu.bianhao(10, 10)
a1 = .mingcheng("ttt")
switch a1
{
case .bianhao(let b ,let c) :
    print( b,c)
case . mingcheng(let d):
    print(d)
}
print(a1)











