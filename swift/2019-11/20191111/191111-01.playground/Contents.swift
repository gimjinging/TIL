import UIKit


// 1. 두 개의 자연수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 정수로 반환하는 함수
//   (1과 5 입력 시 15,  29와 30 입력 시 2930,  6과 100 입력 시 6100)

func combineNumber(_ num1: Int, _ num2: Int) -> String {
    let str = String(num1) + String(num2)
    return str
}

combineNumber(1212, 3456)


