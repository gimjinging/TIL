//
//  SecondViewController.swift
//  1206-task1
//
//  Created by Mac mini on 2020/01/05.
//  Copyright © 2020 Mac mini. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let label = UILabel()
    let button = UIButton(type: .system)
    var word = "nothing.."

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        label.frame = CGRect(x: 90, y: 200, width: 200, height: 100)
        label.backgroundColor = .systemIndigo
        label.textColor = .white
        label.textAlignment = .center
        label.text = word
        view.addSubview(label)
        
        button.frame.size = CGSize(width: 100, height: 50)
        button.center = view.center
        button.setTitle("Dismiss", for: .normal)
        button.addTarget(self, action: #selector(dismiss(_:)), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func dismiss(_ button: UIButton) {
        presentingViewController?.dismiss(animated: true)
        
    }
    

    
}
