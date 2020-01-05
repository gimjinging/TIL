//
//  ViewController.swift
//  UserDefaults
//
//  Created by giftbot on 2019. 11. 20..
//  Copyright © 2019년 giftbot. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var datePicker: UIDatePicker!
    @IBOutlet private weak var alertSwitch: UISwitch!
    let myUserDefaults = UserDefaults.standard
    
    
    // MARK: Action Handler
    
    // userDefault에 datePicker의 date 값 저장하기
    @IBAction func saveData(_ button: UIButton) {
        myUserDefaults.setValue(datePicker.date, forKey: "savedDate")
    }
    
    // userDefault에서 저장된 date 값 불러오기
    @IBAction func loadData(_ button: UIButton) {
        // Any type, 옵셔널로 저정되어 있으니 옵셔널 해제해주고, Any->Date 타입으로 타입캐스팅 해줌
        guard let date = myUserDefaults.value(forKey: "savedDate") as? Date else { return }
        // datePicker에 set해주기
        datePicker.setDate(date, animated: true)
    }
}

