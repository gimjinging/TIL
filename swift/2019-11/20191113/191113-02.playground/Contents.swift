import UIKit

// 2. 100 ~ 900 사이의 숫자 중 하나를 입력받아 각 자리의 숫자가 모두 다른지 여부를 반환하는 함수
// ex) true - 123, 310, 369   /  false - 100, 222, 770

func checkNumber(_ num: Int) -> Bool {
    let numStr: String = String(num)
    var compare: [String] = []
    
    for i in numStr {
        compare.append(String(i))
    }
    
    let c = compare.count
    for i in 0..<c {
        for j in i..<c-1 {
            if compare[i] == compare[j+1] {
                return false
            }
        }
    }
    return true
}


checkNumber(11)
checkNumber(123456789)
checkNumber(1234567899)

