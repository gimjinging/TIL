//
//  ViewController.swift
//  191126-2
//
//  Created by Mac mini on 2019/12/08.
//  Copyright © 2019 Mac mini. All rights reserved.
//
/*
 [ 과제 ]
 1. 영상 파일 참고
 > 텍스트 필드에 어떤 값을 입력하면 별도의 Label 에 입력된 텍스트 표시.
 > 텍스트 필드가 활성화 되어 있을 땐 Label 의 텍스트 색상이 파란색이고, Font 크기는 40
 > 텍스트 필드가 비활성화되면 Label 텍스트 색상이 빨간색이고, Font 크기는 20
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.becomeFirstResponder()
        label.textColor = .white
        label.text = "Write Something..."
        // Do any additional setup after loading the view.
    }
   
 
    @IBAction func editingChanged(_ sender: Any) {
        
        label.text = textField.text
        label.textColor = .blue
        label.font = UIFont.systemFont(ofSize: 40.0)
    }
    
    @IBAction func didOnEndExit(_ sender: Any) {
    }
    
    
    @IBAction func editingDidEnd(_ sender: Any) {
        label.text = textField.text
        label.textColor = .red
        label.font = UIFont.systemFont(ofSize: 20.0)
    }

}

