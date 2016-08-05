//
//  main.swift
//  函数的使用
//
//  Created by 张凯泽 on 15/11/28.
//  Copyright © 2015年 rytong_zkz. All rights reserved.
//


//  func 函数名（参数名:参数类型）-> 返回值（返回值的类型）
import Foundation
//判断一个数是否是指数
func isprime(number : Int) -> Bool
{
    var b :Bool = true;
    for i in 2..<number
    {
        if number % i == 0
        {
            b = false;
            break;
        }
    }
    return b;
}
enum IsPrimeOrIsNumber
{
    case prime(String);
    case number(String);
}
func IsPrimeOrNumber(n : Int) ->IsPrimeOrIsNumber
{
    //var valueData  = IsPrimeOrIsNumber.prime("质数");
    for i in 2..<n
    {
        if n % i == 0
        {
             return IsPrimeOrIsNumber.prime("合数")
            //break;
        }
    }
    return .number("质数")

}
var xx : IsPrimeOrIsNumber = IsPrimeOrNumber(12);
switch xx {
case .prime(let a):
    print(a);
    break
case .number(let a):
    print(a);
    break
}

//print(xx);

func sayHello(person :String) -> String
{
    let greeting = "Hello, " + person + "!"
    return greeting
}

struct Person {
    var age : Int;
    var name : String;
    init(byAge age :Int,byName name:String)
    {
        self.age = age;
        self.name = name;
    }
}
var p :Person = Person(byAge: 23, byName: "zkz")
//情形1:
func sayStruct(student :Person) -> String
{
    let name = student.name;
    return name;
}
var name :String = sayStruct(p);
print(name);




//情形2:
func sayStruct2(inout student :Person)// 使用inout修饰是指去变量的地址，在函数里可以对变量的值进行改变，函数 func sayStruct3( var student : Person) 是和这个函数的反例
{
     student.name = "ios";
    
}
sayStruct2(&p);
print(p.name);

func sayStruct3( var student : Person)
{
    student.name = "java";
}
sayStruct3(p);
print(p.name);







//___________________________________________________________________

