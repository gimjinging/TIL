//
//  singleton.swift
//  1206-task1
//
//  Created by Mac mini on 2020/01/05.
//  Copyright © 2020 Mac mini. All rights reserved.
//

import Foundation

class Singleton {
    static let shared = Singleton()
    private init() {}
    var save = ""
}
