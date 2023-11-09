//
//  배열.swift
//  CodingTestTipStorage
//
//  Created by duck on 2023/11/09.
//

import Foundation

struct 배열{
    let s = "DevKDuck"
    
    let a = ["DevKDuck","데브킹덕","뎁덕","DK"]
    
    let emptyA = [Int]()
    
    //MARK: last
    
    lazy var s1 = s.last //Optional(k)
    lazy var a1 = a.last //Optional(DK)
    
    //MARK: first
    
    lazy var s2 = s.first //Optional(D)
    lazy var a2 = a.first //Optional("DevKDuck")
    
    //비어있는 배열일 경우
    lazy var emptyA1 = emptyA.first // nil
    
    
    
    //MARK: map 메서드를 이용하여 배열로 변환
    lazy var x = 1234
    
    //문자열로 변환
    lazy var x1 = String(x).map({String($0)}) //["1","2","3","4"]
    
    lazy var x2 = String(x).map({Int(String($0))!}) //[1,2,3,4]
    
    
    //배열 초기화
    let n = 5
    lazy var n1 = [Int](repeating: 0, count: n) //[0,0,0,0,0]
    lazy var n2 = [Int](0..<n) //[0,1,2,3,4]
    lazy var n3 = [Int](0..<n).map{2*($0)} //[0,2,4,6,8]
    lazy var n4 = [Int](0..<n).filter({$0%2 == 0}) //[0,2,4]
}
