//
//  Queue.swift
//  CodingTestTipStorage
//
//  Created by duck on 2023/11/09.
//

import Foundation

//popLast를 이용한 큐
// FIFO
struct Queue<T> {
    var inputStack = [T]()
    var outputStack = [T]()
    
    mutating func append(_ x: T) {
        inputStack.append(x)
    }
    
    mutating func pop() -> T? {
        var top: T?
        while !(inputStack.isEmpty) {
            let x = inputStack.popLast()!
            outputStack.append(x)
        }
        top = outputStack.popLast()
        return top
    }
    
    //맨 앞에 있는 자료
    mutating func head() -> T? {
        while !(inputStack.isEmpty) {
            let x = inputStack.popLast()!
            outputStack.append(x)
        }
        return outputStack.isEmpty ? nil : outputStack[outputStack.endIndex-1]
    }
    //큐가 비어있는지
    func isEmpty() -> Bool {
        return inputStack.isEmpty && outputStack.isEmpty ? true : false
    }
}


