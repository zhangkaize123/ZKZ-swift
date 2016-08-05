//: Playground - noun: a place where people can play

import Cocoa

var names = ["America","China","England"]

func backward(firstString :String,secendString :String) ->String{
    return firstString + secendString
    
}
//var resultValue = sort(names , backward)

//func sort (arr :Array<String> , zkzoperation:(str1 :String , str2 :String) ->Bool)
//{
//    let displayValue = zkzoperation(str1: arr[0], str2: arr[1])
//    print(displayValue)
//}
func sort (arr:Array<String> ,zkzoperation:(str1 :String , str2 :String) ->String)->String
{
    let displayValue = zkzoperation(str1: arr[1], str2: arr[2])
    return displayValue
}

sort(names,zkzoperation: backward)
/*
func performOperation (operation :(number1 : Double , number2 :Double) ->Double)
{
let displayValue = operation(number1: 2,number2: 3)
print(displayValue)
}
*/
//sort({(firstString :String,secendString :String) ->Bool in
//    return firstString > secendString
//    
//    })