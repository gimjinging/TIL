import UIKit


// 1. 자연수를 입력받아 원래 숫자를 반대 순서로 뒤집은 숫자를 반환하는 함수
// ex) 123 -> 321 , 10293 -> 39201

func returnReverse (_ number: Int) -> String {
    let numStr: String = String(number)
    var numArr: [String] = []
    var result: String = ""
    
    for i in numStr {
        numArr.append(String(i))
    }
    
    numArr.reverse()
    
    for i in numArr {
        result += "\(i)"
    }
    
    return result
}


print(returnReverse(987654321))







