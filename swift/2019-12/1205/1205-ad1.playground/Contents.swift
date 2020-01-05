import UIKit

 /*
[ 도전 과제 ]
1.

let task2: Any = addTwoValues
과제 1번에 이어 이번에는 위와 같이 정의된 task2 변수에 대해
두 변수의 더하기 연산이 제대로 동작하도록 할 것
(addTwoValues의 각 파라미터에는 원하는 값 입력)
task2 + task2

 */

func addTwoValues(a: Int, b: Int) -> Int {
  return a + b
}

let task2: Any = addTwoValues
type(of: task2)
// ((Int, Int) -> Int) 함수 타입임을 확인 할 수 있다

(task2 as! (Int, Int) -> Int)(10, 7) + (task2 as! (Int, Int) -> Int)(10, 7)
type(of: task2)
