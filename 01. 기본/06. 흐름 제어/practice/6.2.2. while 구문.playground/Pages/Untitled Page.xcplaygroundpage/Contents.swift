var names: [String] = ["Joker", "Jenny", "Nova", "Jin"]

while names.isEmpty == false {
    print("Good bye \(names.removeFirst())")
    // removeFirst()는 요소를 삭제함과 동시에 삭제한 요소를 반환
}
//Good bye Joker, //Good bye Jenny, //Good bye Nova, //Good bye Jin

var count = 3

print("Ready!")

while count > 0 {
    print("\(count)...")     // 조건 수행한다는 뜻
    count -= 1
}
// 3부터 count가 0보다 클때까지만(조건) 안에 있는 코드들을 반복
print("START!")

// --------------

var count = 3

print("Ready!")

if count > 0 {
    print("\(count)...")     // 조건 / {}안에 있는 코드들을 반복 수행한다는 뜻
    count -= 1

print("START!")
