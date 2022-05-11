// String, Int, Double 타입을 갖는 튜플
var person: (String, Int, Double) = ("Jin", 28, 179)

// 인덱스를 통해서 값을 빼 올 수 있음
print("이름: \(person.0), 나이: \(person.1), 신장:\(person.2)")


person.1 = 28       // 인덱스를 통해 값을 할당 할 수 있음
person.2 = 179

print("이름: \(person.0), 나이: \(person.1), 신장:\(person.2)")

----------

// String, Int, Double 타입을 갖는 튜플

var person: (name: String, age: Int, height: Double) = ("Jin", 28, 179)

// 요소 이름을 통해서 값을 빼 올 수 있음
print("이름: \(person.name), 나이: \(person.age), 신장: \(person.height)")

person.age = 28         // 요소 이름을 통해 값을 할당할 수 있음
person.2 = 179          // 인덱스를 통해서도 값을 할당할 수 있음

// 기존처럼 인덱스를 이용하여 값을 빼 올 수도 있음
print("이름: \(person.0), 나이: \(person.1), 신장: \(person.2)")

-----------

typealias PersonTuple = (name: String, age: Int, height: Double)

let Jin: PersonTuple = ("Jin", 28, 179)
let Eric: PersonTuple = ("Eric", 20, 173)

print("이름: \(Jin.name), 나이: \(Jin.age), 신장: \(Jin.height)")
print("이름: \(Eric.name), 나이: \(Eric.age), 신장: \(Eric.height)")
