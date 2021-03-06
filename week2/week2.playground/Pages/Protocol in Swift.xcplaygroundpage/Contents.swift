//: [Previous](@previous)

import Foundation

//=== 1 ===

//protocol PoliceMan {
//    func arrestCriminals() -> Void
//}
//
//struct Person {
//    var name: String
//}



//=== 2 ===

//protocol PoliceMan {
//    func arrestCriminals() -> Void
//}
//
//struct Person: PoliceMan {
//
//    var name: String
//
//    func arrestCriminals() {
//        return()
//    }
//}



//=== 3 ===

protocol ToolMan {
    func fixComputer() -> Void
}

//=== 4 ===

protocol PoliceMan {
    func arrestCriminals() -> Void
}

struct Person: PoliceMan {

    var name: String
    
    var toolMan: ToolMan

    func arrestCriminals() {
        return()
    }
}

//=== 5 ===

struct Engineer: ToolMan {
    
    func fixComputer() {
        return()
    }
}

//=== 6 ===

let engineer = Engineer()

let p = Person(name: "Steven", toolMan: engineer)


