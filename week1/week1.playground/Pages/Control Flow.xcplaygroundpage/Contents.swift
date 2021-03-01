

//==== 1 ====

let lottoNumbers = [10, 9, 8, 7, 6, 5]


for i in 3...5 {
    print("i: \(i)")

    let element = lottoNumbers[i]
    print("element: \(element)")
}

print("----------")

//==== 2 ====

for i in 3...5 {
    print("i: \(i*2)")
    
//    let element = lottoNumbers[i]
//    print("element: \(element)")
}

print("----------")

//==== 3 ====

var i = 3
while (i <= 5) {
    print(i*2)
    i += 1
}

print("----------")

//==== 4 ====

var number = 3
repeat {
    print("number: \(number*2)")
    number += 1
    
} while number < 6

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

var jobLevel = [1: "Member", 2: "Team Leader", 3: "Manager", 4: "Director"]

let result = jobLevel[0]
print("result: \(result)")


if (result == nil) {
    print("we don't have this job.")
}

print("----------")


