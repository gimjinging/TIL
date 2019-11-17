import UIKit

// 3. 자연수를 입력받아 그 수의 약수를 모두 출력하는 함수

func returnSubmultiple(_ num: Int) -> String {
    var result: String = ""
    var i = 1
    while i < num {
        if num % i == 0 {
            result += "\(String(i)),"
        }
        i += 1
    }
    
    return "\(num)의 약수는 \(result)\(num) 입니다!"
}

print(returnSubmultiple(20))
print(returnSubmultiple(124))
