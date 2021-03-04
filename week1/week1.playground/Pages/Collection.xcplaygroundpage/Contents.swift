import Foundation

//==== 1 ====

var myFriends = [String]()


//==== 2 ====

myFriends.append("Ian")
myFriends.append("Bomi")
myFriends.append("Kevin")

//myFriends = ["Ian", "Bomi", "kevin" ]


//==== 3 ====

myFriends.append("Michael")
print(myFriends)
//==== 4 ====

myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

//==== 5 ====

for friend in myFriends {
    print(friend)
}

//==== 6 ====

//全部只有四個朋友，沒有第五個

//==== 7 ====

var firstfriend = myFriends[0]
print(firstfriend)


//==== 8 ====

var lastfriend = myFriends.last
print(lastfriend)

//==== 9 ====

var myCountryNumber = [String: Int]()

//==== 10 ====

myCountryNumber = ["US": 1, "GB": 44, "JP": 81]

//==== 11 ====

myCountryNumber.updateValue(0, forKey: "GB")

//==== 12 ====

// [Aws]
// [:]

//==== 13 ====

//使用removeValue(forKey: )
myCountryNumber.removeValue(forKey: "US")
print(myCountryNumber)
 


