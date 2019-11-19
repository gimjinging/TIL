import UIKit

class Animal {
    var brain = true
    var legs = 0
}

class Human: Animal {
    override var legs: Int {
        get {
            super.legs = 2
            return super.legs
        }
        set {
            super.legs = newValue
        }
    }
}

class Pet: Animal {
    var fleas = 0
    
    override var legs: Int {
        get {
            super.legs = 4
            return super.legs
        }
        set {
            super.legs = newValue
        }
    }
}

class Dog: Pet {
    override var fleas: Int{
        get {
            super.fleas = 8
            return super.fleas
        }
        set {
            super.fleas = newValue
        }
    }
}

class Cat: Pet {
    override var fleas: Int {
        get {
            super.fleas = 4
            return super.fleas
        }
        set {
            super.fleas = newValue
            
        }
    }
}

print("==Human==")
let h1 = Human()
print("brain : \(h1.brain)")
print("legs : \(h1.legs)")

print("==Pet==")
let p1 = Pet()
print("brain : \(p1.brain)")
print("legs : \(p1.legs)")
print("felas : \(p1.fleas)")

print("==Dog==")
let d1 = Dog()
print("brain : \(d1.brain)")
print("legs : \(d1.legs)")
print("felas : \(d1.fleas)")

print("==Cat==")
let c1 = Cat()
print("brain : \(c1.brain)")
print("legs : \(c1.legs)")
print("felas : \(c1.fleas)")


