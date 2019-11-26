//
//  ViewController.swift
//  191121-1
//
//  Created by JinGyung Kim on 26/11/2019.
//  Copyright © 2019 momo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0

    @IBOutlet var uiText: UILabel!
    @IBAction func plusButton(_ sender: Any) {
        count += 1
        self.uiText.text = String(count)
        self.uiText.textColor = .blue
    }
    
    @IBAction func minusButton(_ sender: Any) {
        count -= 1
        self.uiText.text = String(count)
        self.uiText.textColor = .red
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

