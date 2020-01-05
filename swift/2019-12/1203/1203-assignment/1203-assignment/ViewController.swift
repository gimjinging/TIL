//
//  ViewController.swift
//  1203-assignment
//
//  Created by Mac mini on 2019/12/24.
//  Copyright © 2019 Mac mini. All rights reserved.
//
/*
 - FirstVC 에 Dog, Cat, Bird 라는 이름의 Button을 3개 만들고 숫자를 표시하기 위한 Label 하나 생성
 - SecondVC 에 UIImageView 하나와 Dismiss 를 위한 버튼 하나 생성
 - FirstVC에 있는 버튼 3개 중 하나를 누르면 그 타이틀에 맞는 이미지를 SecondVC의 ImageView 에 넣기
   (이미지는 구글링 등을 통해 활용)
 - 각 버튼별로 전환 횟수를 세서 개는 8회, 고양이는 10회, 새는 15회가 초과되면 화면이 전환되지 않도록 막기
   (전환 횟수가 초과된 버튼은 그것만 막고, 횟수가 초과되지 않은 버튼으로는 전환 가능)
 - SecondVC에 추가로 UIButton 을 하나 생성하여 그 버튼을 누를 때마다 개와 고양이, 새 모두에 대해 전환 횟수가 각각 1회씩 추가되도록 구현
 */

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var dogCount = 0
    var catCount = 0
    var birdCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "(  0,  0,  0  )"
        label.textAlignment = .center
    }
    
    // segue_shouldPerformSegue
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        super.shouldPerformSegue(withIdentifier: identifier, sender: sender)
        
        if identifier == "dog" && dogCount > 7 {
            return false
        } else if identifier == "cat" && catCount > 9 {
            return false
        } else if identifier == "bird" && birdCount > 14 {
            return false
        } else {
            return true
        }
    }
    
    // segue_prepare
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let svc = segue.destination as? SecondVC else { return }
        
        if segue.identifier == "dog" {
            svc.picture = "dog.jpg"
            self.dogCount += 1
            label.text = "(  \(String(dogCount)),   \(String(catCount)),   \(String(birdCount))  )"

        } else if segue.identifier == "cat" {
            svc.picture = "cat.jpg"
            self.catCount += 1
            label.text = "(  \(String(dogCount)),   \(String(catCount)),   \(String(birdCount))  )"
        } else {
            svc.picture = "bird.jpg"
            self.birdCount += 1
            label.text = "(  \(String(dogCount)),   \(String(catCount)),   \(String(birdCount))  )"
        }
    }
    
    
    // secondVC에서 값을 받아오는 건 unwind에서 하기! unwindSegue.source 이용하기!
    // segue_unwind
    @IBAction func unwindToVC(_ unwindSegue: UIStoryboardSegue) {
        guard let svc = unwindSegue.source as? SecondVC else { return }
        dogCount += svc.plusCount
        catCount += svc.plusCount
        birdCount += svc.plusCount
        label.text = "(  \(String(dogCount)),   \(String(catCount)),   \(String(birdCount))  )"
    }
    
    
    


}

