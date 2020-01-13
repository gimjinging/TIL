//
//  ViewController.swift
//  0113task1-button1
//
//  Created by JinGyung Kim on 2020/01/13.
//  Copyright © 2020 momo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    var isClicked1: Bool = false
    var isClicked2: Bool = false
    
    @IBOutlet weak var button00: UIButton!
    @IBOutlet weak var button01: UIButton!
    @IBOutlet weak var button02: UIButton!
    @IBOutlet weak var button03: UIButton!
    @IBOutlet weak var button04: UIButton!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let buttons: [UIButton] = [button1, button2, button3, button4]
        
        for i in buttons {
            i.center.y = button0.center.y
            i.transform = i.transform.scaledBy(x: 0.5, y: 0.5)
        }
        
        let buttons0: [UIButton] = [button01, button02, button03, button04]
        for i in buttons0 {
            i.center.y = button00.center.y
            i.transform = i.transform.scaledBy(x: 0.5, y: 0.5)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button0.layer.cornerRadius = 0.5 * button0.bounds.size.width
        button1.layer.cornerRadius = 0.5 * button0.bounds.size.width
        button2.layer.cornerRadius = 0.5 * button0.bounds.size.width
        button3.layer.cornerRadius = 0.5 * button0.bounds.size.width
        button4.layer.cornerRadius = 0.5 * button0.bounds.size.width
    
        button00.layer.cornerRadius = 0.5 * button00.bounds.size.width
        button01.layer.cornerRadius = 0.5 * button00.bounds.size.width
        button02.layer.cornerRadius = 0.5 * button00.bounds.size.width
        button03.layer.cornerRadius = 0.5 * button00.bounds.size.width
        button04.layer.cornerRadius = 0.5 * button00.bounds.size.width
    }
    
    @IBAction func clickButton0(_ sender: Any) {
        
        isClicked1.toggle()
        if isClicked1 {
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [.beginFromCurrentState], animations: {
                self.button1.center.y = self.button0.center.y - 150
                self.button1.transform = self.button1.transform.scaledBy(x: 2, y: 2)
            }) { _ in }
            
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [.beginFromCurrentState], animations: {
                self.button2.center.y = self.button1.center.y - 150
                self.button2.transform = self.button2.transform.scaledBy(x: 2, y: 2)
            }) { _ in }
            
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [.beginFromCurrentState], animations: {
                self.button3.center.y = self.button2.center.y - 150
                self.button3.transform = self.button3.transform.scaledBy(x: 2, y: 2)
            }) { _ in }
            
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [.beginFromCurrentState], animations: {
                self.button4.center.y = self.button3.center.y - 150
                self.button4.transform = self.button4.transform.scaledBy(x: 2, y: 2)
            }) { _ in }
        } else {
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [.beginFromCurrentState], animations: {
                self.button4.center.y = self.button0.center.y
                self.button4.transform = self.button4.transform.scaledBy(x: 0.5, y: 0.5)
            }) { _ in }
            
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.01, options: [.beginFromCurrentState], animations: {
                self.button3.center.y = self.button0.center.y
                self.button3.transform = self.button3.transform.scaledBy(x: 0.5, y: 0.5)
            }) { _ in }
            
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.01, options: [.beginFromCurrentState], animations: {
                self.button2.center.y = self.button0.center.y
                self.button2.transform = self.button2.transform.scaledBy(x: 0.5, y: 0.5)
            }) { _ in }
            
            UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.01, options: [.beginFromCurrentState], animations: {
                self.button1.center.y = self.button0.center.y
                self.button1.transform = self.button1.transform.scaledBy(x: 0.5, y: 0.5)
            }) { _ in }
        }
        
    }
    
    @IBAction func clickButton00(_ sender: Any) {
        
        isClicked2.toggle()
        if isClicked2 {
            UIView.animateKeyframes(withDuration: 2.0, delay: 0, options: [.beginFromCurrentState], animations: {
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 1/4) {
                    self.button01.center.y = self.button00.center.y - 150
                    self.button02.center = self.button01.center
                    self.button03.center = self.button01.center
                    self.button04.center = self.button01.center
                    self.button01.transform = self.button01.transform.scaledBy(x: 2, y: 2)
                }
                UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 1/4) {
                    self.button02.center.y = self.button01.center.y - 150
                    self.button03.center = self.button02.center
                    self.button04.center = self.button02.center
                    self.button02.transform = self.button02.transform.scaledBy(x: 2, y: 2)
                }
                UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 1/4) {
                    self.button03.center.y = self.button02.center.y - 150
                    self.button04.center = self.button03.center
                    self.button03.transform = self.button03.transform.scaledBy(x: 2, y: 2)
                  
                }
                UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 1/4) {
                    self.button04.center.y = self.button03.center.y - 150
                    self.button04.transform = self.button04.transform.scaledBy(x: 2, y: 2)
                }
            }) { _ in }
        } else {
            UIView.animateKeyframes(withDuration: 2.0, delay: 0, options: [.beginFromCurrentState], animations: {
                UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 1/4) {
                    self.button04.center.y = self.button03.center.y
                    self.button04.transform = self.button04.transform.scaledBy(x: 0.5, y: 0.5)
                }
                UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 1/4) {
                    self.button04.center.y = self.button02.center.y
                    self.button03.center.y = self.button02.center.y
                    self.button03.transform = self.button03.transform.scaledBy(x: 0.5, y: 0.5)
                }
                UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 1/4) {
                    self.button04.center.y = self.button01.center.y
                    self.button03.center.y = self.button01.center.y
                    self.button02.center.y = self.button01.center.y
                    self.button02.transform = self.button02.transform.scaledBy(x: 0.5, y: 0.5)
                }
                UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 1/4) {
                    self.button04.center.y = self.button00.center.y
                    self.button03.center.y = self.button00.center.y
                    self.button02.center.y = self.button00.center.y
                    self.button01.center.y = self.button00.center.y
                    self.button01.transform = self.button01.transform.scaledBy(x: 0.5, y: 0.5)
                }
            }) { _ in }
        }
        
    }
}

