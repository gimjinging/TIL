//
//  BViewController.swift
//  191125-1
//
//  Created by JinGyung Kim on 02/12/2019.
//  Copyright © 2019 momo. All rights reserved.
//

import UIKit

class BViewController: UIViewController {
    
    let label = UILabel()
    let button = UIButton(type: .system)
    
    @objc private func didTapButton(_ button: UIButton) {
        
        guard let vc = presentingViewController as? ViewController else {return}
        // as -> 형변환할 때 사용
        
        let count = Int(self.label.text ?? "")
        vc.label.text = String(count! + 1)
        vc.dismiss(animated: true)
    }
    

    override func viewDidLoad() {
        
        view.backgroundColor = .yellow
        
        label.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        view.addSubview(label)
        
        button.frame = CGRect(x: 110, y: 300, width: 200, height: 100)
        button.setTitle("Move to Page A", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(button)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

