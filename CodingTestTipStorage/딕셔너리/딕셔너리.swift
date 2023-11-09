//
//  딕셔너리.swift
//  CodingTestTipStorage
//
//  Created by duck on 2023/11/09.
//

import Foundation

class 딕셔너리{
    var dic: [String:Int] = [:]
    
    init(dic: [String : Int]) {
        self.dic = dic
        self.k()
    }
    
    func k (){
        dic["DevKDuck"] = 2
        dic["DevKDuck1"] = 3
        dic["DevKDuck2"] = 4
    }
    
    //MARK: .count - 개수
    /*
     dic.count = 1
     */
    
    //MARK: .isEmpty - 비어있는지 확인
    //dic.isEmpty = false
    
    
    //MARK: 원소 삭제
    //dic["DevKDuck"] = nil
    
    
    //MARK: 값이 없을 경우 디폴트 값
    //String(딕셔_너리.dic["DK",default: 1])
}
