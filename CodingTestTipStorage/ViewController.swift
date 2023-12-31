//
//  ViewController.swift
//  CodingTestTipStorage
//
//  Created by duck on 2023/11/09.
//

import UIKit

class ViewController: UIViewController {
    
    let centerlabel: UILabel = {
        let s = UILabel()
        s.text = "없음"
        s.numberOfLines = 0
        s.translatesAutoresizingMaskIntoConstraints = false
        s.font = UIFont.systemFont(ofSize: 44)
        return s
    }()
    
    //MARK: 인스턴스 생성
    var 접두_접미 = 접두사_접미사()
    var 인_덱스 = 인덱스()
    var 배_열 = 배열()
    var 딕셔_너리 = 딕셔너리(dic: [:])
    var q = Queue<Int>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemYellow
        
        setCenterLabel()
        
        q.inputStack = [1]
        q.append(2)
        
        centerlabel.text = "\(q.isEmpty())"
        
        /*
        if let val = 딕셔_너리.dic["k"]{
            centerlabel.text = String(val)
        }
        else{
            centerlabel.text = "nil"
        }
         딕셔너리 확인
         */
        
    }
    
    func setCenterLabel(){
        view.addSubview(centerlabel)
        
        NSLayoutConstraint.activate([
            centerlabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            centerlabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            centerlabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            centerlabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            centerlabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            centerlabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)
        ])
    }
    
}

