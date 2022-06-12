class Person {
    var name: String
    var age: Int?
    
    init(name: String) {
        self.name = name
    }
}

let A: Person = Person(name: "Jin")
print(A.name)
// Jin
print(A.age)
// nil

A.age = 99
print(A.age!)
// 99
