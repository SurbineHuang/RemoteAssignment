//: [Previous](@previous)

import Foundation

//=== 1 ===

enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    let gender: Gender
    
    init(gender: Gender) {
        self.gender = gender}
    
    func eat() {
        print("I eat everything!")
    }
}

let animal = Animal(gender: .male)
animal.eat()


print("----------------")

//=== 2 ===

class Elephant: Animal {
    override func eat() {
        print("Eat grass")
    }
}
let elephant = Elephant(gender: .male)
elephant.eat()

class Tiger: Animal {
    override func eat() {
        print("Eat meat")
    }
}
let tiger = Tiger(gender: .male)
tiger.eat()

class Horse: Animal {
    override func eat() {
        print("Eat grass")
    }
}
let horse = Horse(gender: .male)
horse.eat()

print("----------------")

//=== 3 ===

class Zoo {
    
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: Tiger(gender: .male))

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse


//=== 4 ===

//Struct 是 value type，結構、統計值。Ｃlass 是 reference type，物件導向
//Struct不可以被繼承，Class可以被繼承
//Struct有memeberwise initializer

//=== 5 ===

//instance method 實體方法 : 需要先生成一個特定型別（類別、結構、列舉）的實體，才能使用這個 instance method
//type method 型別方法：屬於特定型別（類別、結構、列舉）本身的方法

//=== 6 ===

//Initializer 是準備要使用 class 或 struct 的實例過程，為實例裡的屬性設立一個初始值

//=== 7 ===

//self : 用來代表實體本身


//=== 8 ===

//reference type 是保存變數位置
//value type 是保存變數的值




 
