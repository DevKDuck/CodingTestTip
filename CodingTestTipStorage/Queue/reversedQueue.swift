//
//  reversedQueue.swift
//  CodingTestTipStorage
//
//  Created by duck on 2023/11/10.
//

import Foundation


struct ReversedQueue<T>{
    var inputStack = [T]()
    var outputStack = [T]()
    
    mutating func append(_ x: T){
        inputStack.append(x)
    }
    
    mutating func pop() -> T?{
        var top: T?
        if outputStack.isEmpty{
            outputStack = inputStack.reversed()
            inputStack.removeAll()
            top = outputStack.popLast()
        }
        else{
            top = outputStack.popLast()
        }
        return top
    }
    
    mutating func head() -> T?{
        if outputStack.isEmpty{
            outputStack = inputStack.reversed()
            inputStack.removeAll()
        }
        return outputStack.isEmpty ? nil : outputStack[outputStack.endIndex-1]
    }
    
    func isEmpty() -> Bool{
        return inputStack.isEmpty && outputStack.isEmpty ? true : false
    }
    
}
