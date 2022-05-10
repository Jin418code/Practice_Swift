// 상수로 선언된 문자열은 변경이 불가함
let name: String = "Jin"

// var 키워드를 사용하여 변수를 생성했으면 문자열의 수정 및 변경이 가능함
var introduce: String = String()

// append() 메서드를 사용해 문자열을 이어붙일 수 있음
introduce.append("제 이름은")

// + 연산자를 통해서도 문자열을 이어붙일 수 있음
introduce = introduce + " " + name + "입니다."
print(introduce)

// name에 해당하는 문자의 수를 셀 수 있음
print("name의 글자 수: \(name.count)")

let unicodeScalrValue: String = "\u{2665}"
// 유니코드의 스칼라값을 사용하면 값에 해당하는 표현이 출력됨.
// \u{2665} = ♥

let hello: String = "Hello"
let Jin: String = "Jin"
var greeting: String = hello + " " + Jin + "!" // " " 띄어쓰기 삽입
print(greeting)

greeting = hello
greeting += " "
greeting += Jin
greeting += "!"
print(greeting)

// 연산자를 통한 문자열 비교
var isSameString: Bool = false

isSameString = hello == "Hello"
print(isSameString)

isSameString = hello == "hello"
print(isSameString)

isSameString = Jin == "Jin"
print(isSameString)

isSameString = Jin == hello
print(isSameString)

// 큰따옴표 차이 비교
let helloquestion: Int = 100
let ppp: Int = 20
print("helloquestion + ppp")
