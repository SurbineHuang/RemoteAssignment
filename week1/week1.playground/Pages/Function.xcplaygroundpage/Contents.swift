

// ==== 1 ====

func greet(person: String) {
    print("Hello, \(person)")
    
}
greet(person: "Celeste")


// ==== 2 ====

func multiply(a: Int, b: Int = 10) {
    print(a * b)
}

multiply(a: 7, b: 8)
multiply(a: 2)


// ==== 3 ====

// argument label: 在呼叫 func() 時的參數
// parameter Name: func{} 中的參數

// ==== 4 ====

// func birthday() -> String {}，回傳類型為 String
// func payment() -> Double {}，回傳類型為 64位元小數點
