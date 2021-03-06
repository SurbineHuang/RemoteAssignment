import UIKit

var str = "Hello, playground"


//=== 1 ===

enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    func getPrice() -> Int {
        
        switch self {
        case .oil92:
            return 7
        case .oil95:
            return 8
        case .oil98:
            return 9
        case .diesel:
            return 10
        }
        
    }
}

var gas = Gasoline.oil92
print(gas.rawValue)

//Associated Value: 讓 enum 中的 case 具有儲存資料的功能
//舉例：case Gasonline (type: String, price: Int)


//=== 2 ===

class Pet {
    var name: String
    init(name: String) {
        self.name = name
}
}

class People {
    var pet: Pet?
    
}

var people = People()
people.pet = Pet(name: "cat")
guard let p1 = people.pet else {
    // 一般都用 return ，但這邊沒有 func 所以用 throw NSError() https://stackoverflow.com/questions/47638413/how-to-exit-guard-outside-and-inside-a-function-swift
    print("ERROR")
    throw NSError()
}

var people1 = People()
people1.pet = Pet(name: "cat")
if let p1 = people1.pet {
    p1
}
