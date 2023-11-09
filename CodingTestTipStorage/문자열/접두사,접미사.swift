//
//  접두사,접미사.swift
//  CodingTestTipStorage
//
//  Created by duck on 2023/11/09.
//

import Foundation

struct 접두사_접미사{
    let s = "DevKDuck"
    
    //MARK:prefix
    
    //prefix: 첫글자부터 인자까지 범위 반환
    
    //SubString형태이기 때문에 String 변환 필요
    
    //범위가 글자수를 초과할 경우 모두 반환
    
    lazy var s1: Substring = {
        return self.s.prefix(3)
    }()  //Dev
    
//    let s2 = s.prefix(8) //DevKDuck
//    
//    let s3 = s.prefix(10) //DevKDuck
    
    //배열은 요소의 개수를 가져옴
    let k = ["DevKDuck","데브킹덕","뎁덕","DK"]
    lazy var k1 = k.prefix(2) //"DevKDuck","데브킹덕"
    
    
    
    //MARK: suffix
    //마지막 글자부터 인자까지 반환
    
    lazy var s4 = s.suffix(2) //ck
    
//
//    let s5 = s.suffix(4) //Duck
//    
//    let s6 = s.suffix(10) //DevKDuck
    
    
    //배열은 요소의 개수를 가져옴
    lazy var k2 = k.suffix(2) //"뎁덕","DK"
    
    //MARK: dropFirst
    //첫글자부터 인자까지 떨구고 반환
    
    lazy var s7 = s.dropFirst(3) //KDuck
    
    //배열은 앞에서 요소의 개수를 떨구고 반환
    lazy var k3 = k.dropFirst(2) //"뎁덕","DK"
    
    
    //MARK: dropLast
    //마지막글자부터 인자까지 떨구고 반환
    
    lazy var s8 = s.dropLast(4)//DevK
    //배열은 뒤에서 요소의 개수를 떨구고 반환
    lazy var k4 = k.dropLast(100)
    
}
