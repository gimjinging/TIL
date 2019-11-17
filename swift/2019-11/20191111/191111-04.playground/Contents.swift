import UIKit

// 4. 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수

func returnCommonMultiple (_ num1: Int, _ num2: Int) -> String {
    
    var result: String = ""
    let a = num1 * num2
    var i = 1
    
    repeat {
        result += "\(String(a*i)), "
        i += 1
    } while a*i < 100

    return result
    
}

returnCommonMultiple(3, 5)


// 15, 30
// 15*2, 15*3
