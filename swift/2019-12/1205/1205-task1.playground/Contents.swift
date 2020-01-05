import UIKit

/*
 ******************
 ** Type Casting **
 ******************
 [ 과제 ]
 1.
 func addTwoValues(a: Int, b: Int) -> Int {
   return a + b
 }
 let task1: Any = addTwoValues(a: 2, b: 3)
 위와 같이 정의된 변수 task1이 있을 때 다음의 더하기 연산이 제대로 동작하도록 할 것
 task1 + task1
 */


func addTwoValues(a: Int, b: Int) -> Int {
  return a + b
}

let task1: Any = addTwoValues(a: 2, b: 3)
type(of: task1)

// task1 + task1
// -> Any type은 +연산을 할 수 없다

// task를 Int형으로 타입변환을 해줘야 한다
(task1 as! Int) + (task1 as! Int)
