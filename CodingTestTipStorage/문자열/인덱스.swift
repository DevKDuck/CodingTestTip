//
//  인덱스.swift
//  CodingTestTipStorage
//
//  Created by duck on 2023/11/09.
//

import Foundation

struct 인덱스{
    let s = "DevKDuck"
    
    //MARK: 문자열은 String Index를 이용하여 접근
    
    //MARK: startIndex - 첫요소 0부터 시작
    lazy var c1 = s[s.index(s.startIndex, offsetBy: 0)]  //Character(D)
    
    //MARK: endIndex - 마지막요소부터 시작, 0이 아닌 -1 부터 시작
    lazy var c2 = s[s.index(s.endIndex, offsetBy: -1)]  //Character(k)
    
    
    //MARK: 나눠서도 가능
    lazy var i = s.startIndex
    
    lazy var j = s.index(i, offsetBy: 3)
    
    lazy var c3 = s[i...j] //DevK
    
    
    //MARK: 배열 인덱스
    let a = ["DevKDuck","데브킹덕","뎁덕","DK"]
    
    lazy var d1 = a[0...2] //"DevKDuck","데브킹덕","뎁덕"
    
    
    
    
    
    
    
    
    
}
