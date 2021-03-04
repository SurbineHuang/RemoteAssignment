

//==== 1 ====

let lottoNumbers = [10, 9, 8, 7, 6, 5]


for i in 3...5 {
    print("i: \(i)")

    let element = lottoNumbers[i]
    print("element: \(element)")
}

print("----------")

//==== 2 ====

for i in lottoNumbers.reversed(){
    print(i)
}

for i in (3...5).reversed() {
    print("i: \(i*2)")
    
    
//    let element = lottoNumbers[i]
//    print("element: \(element)")
}

print("----------")

//==== 3 ====

var n = 5
while (n <= 10) {
    print(n)
    n += 1
}
print("==3")
var i = 5
while (i >= 3 ) {
    print(i * 2)
    i -= 1
}

print("----------")

//==== 4 ====

var m = 5
repeat {
    print("m: \(m)")
    m += 1
    
}
while m < 11
print("==4")
var number = 5
repeat {
    print("number: \(number*2)")
    number -= 1
    
}
while number >= 3

print("----------")

//==== 5 ====

 //[Aws]
 //while 迴圈會在開始前判斷
 //repeat while 是在循環一次後進行判斷

print("----------")

//==== 6 ====

var isRaining = ["raining", "sunny"]

for weather in isRaining {
    if weather == "raining" {
        print("It's raining, I don't want to work today.")
    }
    if weather == "sunny" {
        print("Although it's sunny, I still want to work today.")
    }
    
}

print("----------")

//==== 7 ====




var jobLevel: Int = 1

switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("we don't have this job.")
}


print("----------")


