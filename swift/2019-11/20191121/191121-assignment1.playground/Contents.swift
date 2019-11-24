import UIKit

/*
 1. 정수 하나를 입력받은 뒤, 해당 숫자와 숫자 1사이에 있는 모든 정수의 합계 구하기
 e.g.  5 -> 1 + 2 + 3 + 4 + 5 = 15,   -2 -> -2 + -1 + 0 + 1 = -2
 */

class Add {
    let num: Int
    var sum = 0
    
    init(_ number: Int) {
        self.num = number
        addition()
    }
    
    
    func addition() {
        if num < 1 {
            var i = num
            while i <= 1 {
                sum += i
                i += 1
            }
        } else if num > 1 {
            var i = 1
            while i <= num {
                sum += i
                i += 1
            }
        } else if num == 1 {
            sum = 1
        }
        
        print("총합:\(sum)")
    }
}

let a = Add(-2)
let b = Add(10)
let c = Add(-10)
let d = Add(100)

