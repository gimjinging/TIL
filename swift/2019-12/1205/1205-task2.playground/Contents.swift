import UIKit

/*
 
 *****************
 ** Initializer **
 *****************
 [ 과제 ]
 1. 생성자 구현
 - Vehicle 클래스에 지정 이니셜라이져(Designated Initializer) 추가
 - Car 클래스에 modelYear 또는 numberOfSeat가 0 이하일 때 nil을 반환하는 Failable Initializer 추가
 - Bus 클래스에 지정 이니셜라이져를 추가하고, maxSpeed를 100으로 기본 할당해주는 편의 이니셜라이져 추가
 
 */

class Vehicle {
    let name: String
    let maxSpeed: Int
    
    // designated initailizer(지정생성자) : 클래스에 반드시 1개 이상 필요하고 초기화 과정에서 반드시 한번은 호출된다.
    init(name: String, maxSpeed: Int) {
        self.name = name
        self.maxSpeed = maxSpeed
    }
}

class Car: Vehicle {
    var modelYear: Int
    var numberOfSeats: Int
    
    // failable initailizer : 생성이 되면 옵셔널 타입을 반홚게 되며, 생성 실패시 nil 반환
    init?(name: String, maxSpeed: Int, modelYear: Int, numberOfSeats: Int) {
        guard modelYear > 0 && numberOfSeats > 0 else { return nil }
        self.modelYear = modelYear
        self.numberOfSeats = numberOfSeats
        super.init(name: name, maxSpeed: maxSpeed)
    }
}
    
class Bus: Vehicle {
    let isDoubleDecker: Bool
    
    init(name: String, maxSpeed: Int, isDoubleDecker: Bool){
        self.isDoubleDecker = true
        super.init(name: name, maxSpeed: maxSpeed)
    }
    
    convenience init(name:String, isDouBleDecker: Bool){
        self.init(name: name, maxSpeed: 100, isDoubleDecker: isDouBleDecker)
    }
}

let bus = Bus(name: "Bus", isDouBleDecker: true)
bus.isDoubleDecker
bus.maxSpeed
bus.name

let bus2 = Bus(name: "ExpressBus", maxSpeed: 140, isDoubleDecker: true)
bus2.isDoubleDecker
bus2.maxSpeed
bus2.name

let car = Car(name: "BMW", maxSpeed: 240, modelYear: 2019, numberOfSeats: 4)
car?.name
car?.maxSpeed
car?.modelYear
car?.numberOfSeats

let car2 = Car(name: "Truck", maxSpeed: 180, modelYear: 2010, numberOfSeats: 0)
car2?.name
car2?.maxSpeed
car2?.modelYear
car2?.numberOfSeats
