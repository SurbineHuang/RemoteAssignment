import UIKit

func odd(num1: Int) -> Bool {
    return ((num1 % 2) != 0)
}

var oddClosure = { (num1: Int) -> Bool in
    ((num1 % 2) != 0)
}

oddClosure(5)
