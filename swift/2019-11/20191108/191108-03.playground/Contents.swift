import UIKit

// 3. 정수를 두 개 입력 받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)

func doMultiply(number1: Int, number2: Int) -> Int {
    return number1 * number2
}

var answer = doMultiply(number1: 2, number2: 9)
print(answer)
