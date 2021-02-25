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

//==== 4 ====

myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

//==== 5 ====

for friend in myFriends {
    print(friend)
}

//==== 6 ====


