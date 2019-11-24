import UIKit

/*
 1. 입력받은 숫자의 모든 자리 숫자 합계를 출력하기
 e.g.  123 -> 6 ,  5678 -> 26
 */


func sumAllNumber(_ num: Int) -> Int {
    var total = 0
    
    for i in String(num) {
        let str: String = String(i)
        let number = Int(str)
        total += number!
    }
    
    return total
}


print(sumAllNumber(123456789))



