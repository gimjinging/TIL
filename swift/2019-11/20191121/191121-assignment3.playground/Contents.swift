import UIKit

/*
 . 2개의 정수를 입력했을 때 그에 대한 최소공배수와 최대공약수 구하기
 e.g.  Input : 6, 9   ->  Output : 18, 3
 */

func printNumber(_ num1: Int, _ num2: Int) {
    var a = 2
    var b = num1
    var c = num2
    var r = 1
    
    while a < b+c {
        if (b % a == 0) && (c % a == 0) {
            r = r * a
            b = b / a
            c = c / a
            a = 2
        }
        else {
            a += 1
        }
        
    }
    print("최대공약수: \(r), 최대공배수:\(r*b*c)")
}
    

printNumber(6, 9)
printNumber(50,200)
printNumber(100,200)
printNumber(4,100)
printNumber(12,50)

