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
    
    //MARK: 배열 슬라이싱
    
    lazy var s1 = s[s.startIndex...s.index(s.endIndex, offsetBy: -2)] //DevKDuc
    
    
    //MARK: 뒤집기
    //ReversedCollection<String>타입 반환 -> String변환 필요
    lazy var r = String(s.reversed()) //kcuDKveD
    
    lazy var r2 = Array(a.reversed()) //["DK","뎁덕","데브킹덕","DevKDuck"]
    
    
    //MARK: 문자열 곱셈 (repeating: , count: )
    lazy var m1 = String(repeating: s, count: 3) //DevKDuckDevKDuckDevKDuck
    
    lazy var m2 = Array(repeating: a, count: 2)
    //[["DevKDuck","데브킹덕","뎁덕","DK"],["DevKDuck","데브킹덕","뎁덕","DK"]]
    
    
    //MARK: 교환 - replacingOccurrences(of: 바꿀 문자, with: 바뀔 문자)
    lazy var r3 = s.replacingOccurrences(of: "Dev", with: "데브") //데브KDuck

    
}
