import Darwin
class Person {
    let name: String
    var age: Int?
    
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
    
    init?(name: String, age: Int) {
        if name.isEmpty || age < 0 {
            return nil
        }
        self.name = name
        self.age = age
    }
}


let A: Person? = Person(name: "Jin", age: 99)

if let person: Person = A {
    if let age = person.age {
        print(person.name, age)
    }
} else {
    print("Person wasn't initialized")
}
// Jin 99


let B: Person? = Person(name: "", age: 30)

if let person: Person = B {
    print(person.name)
} else {
    print("Person wasn't initialized")
}
// Person wasn't initialized
// name이 비었기 때문에 nil
