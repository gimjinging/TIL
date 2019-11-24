import UIKit

/*
 1. 다음과 같은 속성(Property)과 행위(Method)를 가지는 클래스 만들어보기.
   구현 내용은 자유롭게
 
 ** 강아지 (Dog)
 - 속성: 이름, 나이, 몸무게, 견종
 - 행위: 짖기, 먹기
 
 ** 학생 (Student)
 - 속성: 이름, 나이, 학교명, 학년
 - 행위: 공부하기, 먹기, 잠자기
 
 ** 아이폰(IPhone)
 - 속성: 기기명, 가격, faceID 기능 여부(Bool)
 - 행위: 전화 걸기, 문자 전송
 ** 커피(Coffee)
 - 속성: 이름, 가격, 원두 원산지
 */

class Dog {
    var name: String
    var age: Int
    var weight: Int
    var species: String
    
    init() {
        name = "happy"
        age = 0
        weight = 1
        species = "bulldog"
    }
    
    func bow() {
        print("bow wow!!")
    }
    
    func eat() {
        print("eating dog food now")
    }
}

var dog1 = Dog()
dog1.name
dog1.name = "lala"
dog1.name


class Student {
    let name: String
    let age: Int
    let nameOfSchool: String
    let year: Int
    
    init(_ name: String, _ age: Int, _ nameOfSchool: String, _ year: Int) {
        self.name = name
        self.age = age
        self.nameOfSchool = nameOfSchool
        self.year = year
    }
    
    func study(_ place: Int) {
        if place == 1 {
            print("도서관에서 공부")
        } else if place == 2 {
            print("강의실에서 공부")
        }
    }
    
    func eat() {
        print("식사를 합니다")
    }
    
    func sleep() {
        print("잠을 잡니다")
    }
}

var s1 = Student("amy", 19, "harvard", 1)
print(s1.name)
s1.study(1)



class IPhone {
    let version: String
    let price: Int
    let faceID: Bool
    
    init(_ version: String, _ price: Int, _ faceID: Bool) {
        self.version = version
        self.price = price
        self.faceID = faceID
    }
    
    func call(_ number: String) {
        print("\(number)에 전화를 거는 중입니다.")
    }
    
    func text(_ number: String, _ content: String) {
        print("수신인: \(number)")
        print("내용: \(content)")
    }
}

var ip1 = IPhone("XS", 1600000, true)
ip1.version
ip1.price
ip1.faceID
ip1.call("010-3163-2181")
ip1.text("010-3163-2181", "밥먹었어?")



class Coffee {
    var name = "아라비카"
    var price = 30000
    var origin = "케냐"
    
    func buy() {
        print("\(name) 원두를 구매하였습니다")
    }
    
    func return1() {
        print("\(name) 원두 반품 접수가 완료되었습니다.")
        print("제품 확인 후 \(price)원이 환불 처리 될 예정입니다.")
    }
}

var c1 = Coffee()
c1.buy()
c1.return1()

