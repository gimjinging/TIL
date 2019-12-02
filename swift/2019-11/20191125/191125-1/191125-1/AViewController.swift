//
//  ViewController.swift
//  191125-1
//
//  Created by JinGyung Kim on 02/12/2019.
//  Copyright © 2019 momo. All rights reserved.
//
/*
[ 과제 ]
1. ViewController 데이터 전달
  > AViewController 와 BViewController 를 만든 뒤, 각각 하나씩의 Label 생성
  > A와 B를 화면 전환할 때마다 각 Label에 전환 횟수 1씩 증가
    e.g. A에서 B로 갈 때 1, B에서 다시 A로 넘어올 때 2, 다시 A에서 B로 가면 3
*/


import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()
    let button = UIButton(type: .system)
    
    @objc private func didTapButton(_ sender: UIButton) {
        let count = Int(label.text ?? "0")
        
        let bVC = BViewController()
        bVC.label.text = String(count! + 1)
        present(bVC, animated: true)
        
    }
    
    

    override func viewDidLoad() {
        
        view.backgroundColor = .white
        
        label.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        label.text = "0"
        view.addSubview(label)
        
        button.frame = CGRect(x: 110, y: 300, width: 200, height: 100)
        button.setTitle("Move to page B", for: .normal)
        button.addTarget(self, action: #selector(didTapButton(_:)), for: .touchUpInside)
        view.addSubview(button)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

