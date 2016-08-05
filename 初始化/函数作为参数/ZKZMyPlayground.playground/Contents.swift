//: Playground - noun: a place where people can play

import UIKit
/*
这将为类创建一个初始化器并使用两个参数。初始化器在 Swift 的名称总是为 init – 但可以有多个（如果必要的话），可采用不同的参数。
请注意，这里已经给这个方法使用了参数，与这个类的属性的名称相同。正因为如此，需要通过将自身前缀在属性之前，以区分两者
请注意，由于没有 subtotal 属性，所以不会有名称冲突，不需要添加 self 关键字， 因为编译器可以自动推断。
<1>
在init方法中的参数是这个类的属性
*/
//1
class TipCalculation {
    //2
    let test1 : Double
    let test2 : Double
    let sum : Double
    //3
    init( test1 :Double , test2 :Double)
    {
        self.test1=test1;
        self.test2=test2;
        sum = test2 + test1//7.9
    }
    //4
    func CalculteValue (test3 :Double , test4 : Double) ->Double
    {
        return (test3 + test4) * sum
    }
    //5
    func CalcultionPrint(){
        print("zkz = \(CalculteValue(3, test4: 4))")
    }
    
}

let CalcuTap = TipCalculation(test1: 3.0, test2: 4.9)
CalcuTap.CalcultionPrint()
var arr1 = [Double]()
var diction = [String : String]()
var arr2 : [Double] = [45.0]
 var arr = [12,123,4]
arr.append(34)



