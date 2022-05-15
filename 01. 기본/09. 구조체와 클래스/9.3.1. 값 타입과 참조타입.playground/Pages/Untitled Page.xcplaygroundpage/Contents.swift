struct BasicInformation {
    let name: String
    var age: Int
}

var JinInfo: BasicInformation = BasicInformation(name: "Jin", age: 99)
JinInfo.age = 100

var friendInfo: BasicInformation = JinInfo
// JinInfo의 값을 복사하여 할당함

print("Jin`s age: \(JinInfo.age)")
      print("friend's age: \(friendInfo.age)")

friendInfo.age = 999

print("Jin's age: \(JinInfo.age)")
print("friend's age: \(friendInfo.age)")
// 999 - friendInfo는 JinInfo의 값을 복사해왔기 때문에 별개의 값을 가짐

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
}

var Jin: Person = Person()
var friend: Person = Jin

print("Jin's height: \(Jin.height)")
print("friend's height: \(friend.height)")

friend.height = 179
print("Jin's height: \(Jin.height)")
// 179 - friend는 Jin을 참조하기 때문 값이 변동됨

print("friend's height: \(friend.height)")
// 179 - 이를 통해 Jin이 참조하기 곳과 friend가 참조하는 곳 같음을 알 수 있음

func changeBasicInfo(_ info: BasicInformation) {
    var copiedInfo: BasicInformation = info
    copiedInfo.age = 1
}
func changePersonInfo(_ info: Person) {
    info.height = 155.3
}

// changeBaicsInfo(_:)로 전달되는 전달인자는 값이 복사되어 전달됨
// Jin이 참조하는 값들에 변화
changePersonInfo(Jin)
print("Jin's height : \(Jin.height)")    // 155.3

