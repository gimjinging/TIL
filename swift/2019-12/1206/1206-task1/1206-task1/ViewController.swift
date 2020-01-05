//
//  ViewController.swift
//  1206-task1
//
//  Created by Mac mini on 2020/01/05.
//  Copyright © 2020 Mac mini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func userDefault(_ sender: Any) {
        let user = UserDefaults.standard
        let data = textField.text
        let svc = SecondViewController()
        
        user.set(data, forKey: "userdefault")
        guard let userData = user.string(forKey: "userdefault") else { return }
        svc.word = userData
        
        present(svc, animated: true)
    }
    
    @IBAction func singleton(_ sender: Any) {
        let single = Singleton.shared
        
        guard let data = textField.text else { return }
        single.save = data
        
        let svc = SecondViewController()
        svc.word = single.save
        present(svc, animated: true)
        
    }
    
    
}

