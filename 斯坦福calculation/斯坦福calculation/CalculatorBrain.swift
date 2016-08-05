//
//  CalculatorBrain.swift
//  斯坦福calculation
//
//  Created by 张凯泽 on 15/9/22.
//  Copyright © 2015年 rytong. All rights reserved.
//

import Foundation
class CalculatorBrain
{
private enum Op{
        case Operand(Double)
        case UnaryOperation(String,Double -> Double)
        case BinaryOperation(String,(Double,Double) -> Double)
    }
private var opStack = [ Op ]()
private var knowOps = [String : Op]()
    
    init(){
        knowOps["*"] = Op.BinaryOperation("*", {$0 * $1})
        knowOps["+"] = Op.BinaryOperation("+", {$0 + $1})
        knowOps["-"] = Op.BinaryOperation("-", {$1 - $0})
        knowOps["/"] = Op.BinaryOperation("/", {$1 - $0})
        knowOps["——"] = Op.UnaryOperation("——", { sqrt($0)})
        
    }
    private func evaluate (ops :[Op]) ->(result :Double? ,remainingOp:[Op])
    {
        if !ops.isEmpty
        {
            var remainingOps = ops
            let op = remainingOps.removeLast()
            //print("op=",op)
            //print("remainingOps=",remainingOps)
            switch op
            {
            case .Operand(let operand):
                return (operand ,remainingOps)
                
                
            case .UnaryOperation(_, let operation):
                let operandEvalueation = evaluate(remainingOps)
                if let operand = operandEvalueation.result{
                return (operation(operand),operandEvalueation.remainingOp)
                }
                
                
            case .BinaryOperation(_, let operation):
                let op1erandEvalueation = evaluate(remainingOps)
                if let operand1 = op1erandEvalueation.result{
                    let op2Evaluation = evaluate(op1erandEvalueation.remainingOp)
                    if let operand2 = op2Evaluation.result{
                        
                    return (operation(operand1,operand2),op2Evaluation.remainingOp)
                    }
                }
                
            }
        }
        return (nil,ops)
    }
    
    func evaluate () ->Double?
    {
        let (result , _) = evaluate(opStack)
        return result
    }
    
    func pushOperand(operand : Double) -> Double?{
        opStack.append(Op.Operand(operand))//operand=1
        //print(opStack)
        for Op in opStack
        {
            print(Op)
        }
        return evaluate()
        
    }
    
    func performOperation(symbol : String) -> Double?
        
    {
        if let operation = knowOps[symbol]
        {
            opStack.append(operation)
        }
        return evaluate()
        
    }
    
}




















