import UIKit

// 3. 첨부된 그림을 참고하여 각 도형별 클래스를 만들고 각각의 넓이, 둘레, 부피를 구하는 프로퍼티와 메서드 구현하기

class Square {
    
    let side: Int
    
    init(_ side: Int) {
        self.side = side
    }
    
    func circumference() {
        print("둘레: \(side*4)")
    }
    
    func area() {
        print("넓이: \(side*side)")
    }
}

print("===Square===")
let s1 = Square(10)
s1.circumference()
s1.area()


class Cube {
    let side: Int
    
    init(_ side: Int) {
        self.side = side
    }
    
    func volume() {
        print("부피: \(side*side*side)")
    }
}

print("===Cube===")
let c1 = Cube(10)
c1.volume()

class Rectangle {
    
    let side1: Int
    let side2: Int
    
    init(_ side1: Int, _ side2: Int) {
        self.side1 = side1
        self.side2 = side2
    }
    
    func circumference() {
        print("둘레: \((side1*2)+(side2*2))")
    }
    
    func area() {
        print("넓이: \(side1*side2)")
    }
    
}

print("===Rectangle===")
let r1 = Rectangle(5, 10)
r1.circumference()
r1.area()

class RectangularSolid {
    let side1: Int
    let side2: Int
    let height: Int
    
    init(_ side1: Int, _ side2: Int, _ height: Int) {
        self.side1 = side1
        self.side2 = side2
        self.height = height
    }
    
    func volume() {
        print("부피: \(side1*side2*height)")
    }
}

print("===RectangularSolid===")
let rs1 = RectangularSolid(5, 10, 6)
rs1.volume()


class Circle {
    
    let radius: Double
    
    init(_ radius: Int) {
        self.radius = Double(radius)
    }
    
    func circumference() {
        print("둘레: \(2*3.14*radius)")
    }
    
    func area() {
        print("넓이: \(3.14*radius*radius)")
    }
}

print("===Circle===")
let ci = Circle(10)
ci.circumference()
ci.area()


class CircularCylinder {
    let radius: Double
    let height: Double
    
    init(_ radius: Int, _ height: Int) {
        self.radius = Double(radius)
        self.height = Double(height)
    }
    
    func volume() {
        print("부피: \(3.14*radius*radius*height)")
    }
}

print("===CircularCylinder===")
let cc = CircularCylinder(10, 15)
cc.volume()


class Spere {
    let radius: Double
    
    init(_ radius: Int) {
        self.radius = Double(radius)
    }
    
    func volume() {
        print("부피: \(4/3*3.14*radius*radius*radius)")
    }
}

print("===Spere===")
let sp = Spere(10)
sp.volume()


class Triangle {
    
    let side: Double
    let height: Double
    
    init(_ side: Int, _ height: Int) {
        self.side = Double(side)
        self.height = Double(height)
    }
    
    func area() {
        print("넓이: \(1/2*side*height)")
    }
}

print("===Triangle===")
let tr = Triangle(10, 5)
tr.area()



class Trapezoid {
    let upSide: Double
    let downSide: Double
    let height: Double
    
    init(_ upSide: Int, _ downSide: Int, _ height: Int) {
        self.upSide = Double(upSide)
        self.downSide = Double(downSide)
        self.height = Double(height)
    }
    
    func area() {
        print("넓이: \(1/2*height*(upSide+downSide))")
    }
}

print("===Trapezoid===")
let tp = Trapezoid(5, 15, 5)
tp.area()

class Cone {
    
    let radius: Double
    let height: Double
    
    init(_ radius: Int, _ height: Int) {
        self.radius = Double(radius)
        self.height = Double(height)
    }
    
    func volume() {
        print("부피: \(1/3*3.14*radius*radius*height)")
    }
}

print("===Cone===")
let co = Cone(5, 15)
co.volume()
