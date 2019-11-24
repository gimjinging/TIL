import UIKit

/*
 2. 계산기 클래스를 만들고 다음과 같은 기능을 가진 Property 와 Method 정의해보기
 
 ** 계산기 (Calculator)
 - 속성: 현재 값
 - 행위: 더하기, 빼기, 나누기, 곱하기, 값 초기화
 
 ex)
 let calculator = Calculator() // 객체생성
 
 calculator.value  // 0
 calculator.add(10)    // 10
 calculator.add(5)     // 15
 
 calculator.subtract(9)  // 6
 calculator.subtract(10) // -4
 
 calculator.multiply(4)   // -16
 calculator.multiply(-10) // 160
 
 calculator.divide(10)   // 16
 calculator.reset()      // 0

 */


class Calculator {

    var sum: Int = 0
    
    func reset() {
        sum = 0
        print(sum)
    }
    
    func value() {
        print(sum)
    }
    
    func add(_ num: Int) {
        sum += num
        print(sum)
    }
    
    func subtract(_ num: Int) {
        sum -= num
        print(sum)
    }
    
    func multiply(_ num: Int) {
        sum *= num
        print(sum)
    }
    
    func divide(_ num: Int) {
        sum /= num
        print(sum)
    }
    
}

var c1 = Calculator()
c1.value()

c1.add(10)
c1.add(5)

c1.subtract(9)
c1.subtract(10)

c1.multiply(4)
c1.multiply(-10)

c1.divide(10)
c1.reset()
