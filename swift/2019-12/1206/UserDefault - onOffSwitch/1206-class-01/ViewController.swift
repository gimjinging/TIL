//
//  ViewController.swift
//  1206-class-01
//
//  Created by JinGyung Kim on 2019/12/06.
//  Copyright © 2019 momo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    static let imagePicker = "ImagePickerSwitch"

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    @IBOutlet var onOff: UISwitch!
    let myUserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(myUserDefaults.bool(forKey: "catOrDog"))
        
        /*
        let isOn = UserDefaults.bool(forKey: Key.imagePicker)
        imagePicker.setOn(isOn, animated: false)
        configureData(isOn: isOn)
         */

        if myUserDefaults.bool(forKey: "catOrDog") == true {
            imageView.image = UIImage(named: "cat.jpg")
            label.text = "cat"
            // myUserDefaults.set(true, forKey: "catOrDog")
        } else {
            imageView.image = UIImage(named: "dog.jpg")
            label.text = "dog"
            // myUserDefaults.set(false, forKey: "catOrDog")
        }
    }

    @IBAction func onOffAction(_ sender: UISwitch) {
        
        if sender.isOn {
            imageView.image = UIImage(named: "cat.jpg")
            label.text = "cat"
            myUserDefaults.set(true, forKey: "catOrDog")
            print("on!!!!!!!\(myUserDefaults.bool(forKey: "catOrDog"))")
        } else {
            imageView.image = UIImage(named: "dog.jpg")
            label.text = "dog"
            myUserDefaults.set(false, forKey: "catOrDog")
            print("off!!!!!!!\(myUserDefaults.bool(forKey: "catOrDog"))")
        }
                                                         
    }
    
}

