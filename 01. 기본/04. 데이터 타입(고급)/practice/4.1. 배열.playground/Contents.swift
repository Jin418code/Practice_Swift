// [배열과 선언의 생성]-----------

// 대괄호를 사용하여 배열임을 표현합니다.
var names: Array<String> = ["Jin", "chulsoo", "younghee", "Jack"]

// 위 선언과 정확히 동일한 표현입니다. [String]은 Arry<String>의 축약 표현임.
var names: [String] = ["Jin", "chulsoo", "younghee", "Jack"]

var emptyArray: [Any] = [Any]()        // Any 데이터를 요소로 갖는 빈 배열을 생성함.
var emptyArray: [Any] = Array<Any>()   // 위 선언과 정확히 같은 동작을 하는 코드임.

// 배열의 타입을 정확히 명시해줬다면 []만으로도 빈 배열을 생성할 수 있음.
var emptyArray: [Any] = []
print(emptyArray.isEmpty)    // true
print(names.count)           // 4


// [배열의 사용]----------

print(names[2])
names[2] = "Jenny"
print(names[2])
print(names[4])                 // 인덱스의 범위를 벗어낫기에 오류 발생함

names[4] = "Jan"                              // 인덱스의 범위를 벗어낫기에 오류 발생함
names.append("Elsa")                            // ["Jin", "chulsoo", "Jenny", "Jack", "Elsa"] / 맨 마지막에 Elsa 추가됨
names.append(contentsOf: ["John", "Max"])       // ["Jin", "chulsoo", "Jenny", "Jack", "Elsa", "John", "Max"]/ / 맨 마지막에 John과 Max가 추가됨
names.insert("happy", at: 2)                    // ["Jin", "chulsoo", "happy", "Jenny", "Jack", "Elsa", "John", "Max"] / 인덱스 2에 추가됨
names.insert(contentsOf: ["Jinhee", "Minsoo"], at: 5) // ["Jin", "chulsoo", "happy", "Jenny", "Jack", "Jinhee", "Minsoo", "Elsa", "John", "Max"] / 인덱스 5의 위치에 Jinhee와 Minsoo가 추가됨

print(names[4])
print(names.firstIndex(of: "Jin"))        // "Optional(0)\n" / 인덱스 확인 : 0, 첫번째르 뜻함
print(names.firstIndex(of: "Christal"))   // "nil\n" / 인덱스 확인 : 해당되는 이름의 인덱스가 없음 그래서 nil로 뜸
print(names.first)                        // Jin / 첫번째 인덱스 확인
print(names.last)                         // Max / 마지막 인덱스 확인

let firstItem: String = names.removeFirst() // ["Jin", "chulsoo", "happy", "Jenny", "Jack", "Jinhee", "Minsoo", "Elsa", "John", "Max"] 에서 첫번째인 Jin이 삭제됨
let lastItem: String = names.removeLast() // ["chulsoo", "happy", "Jenny", "Jack", "Jinhee", "Minsoo", "Elsa", "John", "Max"] 에서 마지막인 Max가 삭제됨
let indexZeroItem: String = names.remove(at: 0) //["chulsoo", "happy", "Jenny", "Jack", "Minsoo", "Elsa", "John"]에서 0번째에 있는 chulsoo가 삭제됨

print(firstItem)       // Jin
print(lastItem)        // Max
print(indexZeroItem)   // chulsoo
print(names)           // "["happy", "Jenny", "Jack", "Jinhee", "Minsoo", "Elsa", "John"] 모든 메서드를 사용후 나온 결과
