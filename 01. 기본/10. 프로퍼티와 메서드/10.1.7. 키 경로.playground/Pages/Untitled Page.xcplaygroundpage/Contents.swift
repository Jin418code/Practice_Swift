class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct Stuff {
    var name: String
    var owner: Person
}

print(type(of: \Person.name))
// ReferenceWritableKeyPath<Person, String>
print(type(of: \Stuff.name))
// WritableKeyPath<Stuff, String>


//  클로저를 대체할 수 있는 키 경로 표현
struct Person {
    let name: String
    let nickname: String?
    let age: Int
    
    var isAdult: Bool {
        return age > 18
    }
}

let jin: Person = Person(name: "jin", nickname: "bear", age: 100)
let hana: Person = Person(name: "hana", nickname: "na", age: 100)
let happy: Person = Person(name: "happy", nickname: nil, age: 3)

let family: [Person] = [jin, hana, happy]
let names: [String] = family.map(\.name)
// ["jin", "hana", "happy"]
let nickname: [String] = family.compactMap(\.nickname)
// ["bear", "na"]
let adults: [String] = family.filter(\.isAdult).map(\.name)
// ["jin", "hana"]
