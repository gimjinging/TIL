import UIKit

// 2. 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수

func isThatMultiple(number: Int) -> String {
    if number % 2 == 0 {
        return "\(number) -> 2의 배수 입니다."
    } else {
        return "\(number) -> 2의 배수가 아닙니다."
    }
}

var num1 = 135
var num2 = 222

let answer1 = isThatMultiple(number: num1)
let answer2 = isThatMultiple(number: num2)
