import UIKit

/*
 [ 도전 과제 ]
 
 2.
 class Car {}
 let values: [Any] = [
   0,
   0.0,
   (2.0, Double.pi),
   Car(),
   { (str: String) -> Int in str.count }
 ]
 위 values 변수의 각 값을 switch 문과 타입캐스팅을 이용해 출력하기
 for value in values {
   switch value {
     // Code 구현
   }
 }
 
 */


class Car {}
let values: [Any] = [
  10,
  45.1,
  (2.0, Double.pi),
  Car(),
  { (str: String) -> Int in str.count }
]

for value in values {
  switch value {
  case let integer as Int :
    print("Integer: ", integer)
  case let double as Double :
    print("Double: ", double)
  case let (x, y) as (Double, Double) :
    print("Tuple: ", (x, y))
  case let car as Car :
    print("Car:", car)
  case let closure as (String) -> Int :
    print("Closure: ", closure)
  default :
    print("There is no type in here")
  }
}
