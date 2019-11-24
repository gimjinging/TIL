import UIKit

/*
 2. 숫자를 입력받아 1부터 해당 숫자까지 출력하되, 3, 6, 9가 하나라도 포함되어 있는 숫자는 *로 표시
 e.g.  1, 2, *, 4, 5, *, 7, 8, *, 10, 11, 12, *, 14, 15, * ...
 */


class PrintStar {
    
    let num: Int
    
    init(_ number: Int) {
        num = number
        print()
    }
    
    func print() {
        var i = 1
        var numArr: [String] = []
        var result: [String] = []
        
        while i <= num {
            numArr.append(String(i))
            i += 1
        }
        
        for a in numArr {
            if a.contains("3") {
                result.append("*")
            } else if a.contains("6") {
                result.append("*")
            } else if a.contains("9") {
                result.append("*")
            } else {
                result.append(a)
            }
        }
        
        Swift.print(result)
            
    }
}

let a = PrintStar(19)
let b = PrintStar(199)
