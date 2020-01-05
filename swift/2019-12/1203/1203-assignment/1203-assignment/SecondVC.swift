//
//  SecondVC.swift
//  1203-assignment
//
//  Created by Mac mini on 2019/12/24.
//  Copyright © 2019 Mac mini. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    var picture: String = ""
    var plusCount = 0

    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        imageView.image = UIImage(named: picture)
        super.viewDidLoad()
    }
    
    @IBAction func plusOne(_ sender: Any) {
        plusCount += 1
        print(plusCount)
    }
    
}
