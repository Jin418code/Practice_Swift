// 매개변수가 없는 함수 정의와 사용
func helloWorld() -> String {
    return "Hello, world!"
}
print(helloWorld())


// 매개변수가 여러 개인 함수의 정의와 사용
func sayHello(myName: String, yourName: String) -> String {
    return "Hello \(yourName)! I'm \(myName)"
}

print(sayHello(myName: "Jin", yourName: "Jenny"))
// Hello Jenny! I'm Jin


// 매개변수 이름과 전달인자 레이블을 가지는 함수 정의와 사용
func sayHello(from myName:String, to name:String) -> String {
    return "Hello \(name)! I'm \(myName)"
}

print(sayHello(from: "Jin", to: "Jenny"))
// Hello Jenny! I'm Jin


// 전달인자 레이블이 없는 함수 정의와 사용
func sayHello(_ name: String, _ times: Int) -> String {
    var result: String = ""

    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    return result
}

print(sayHello("Chope", 2))
//Hello Chope! Hello Chope!


// 전달인자 레이블 변경을 통한 함수 중복 정의
func sayHello(to name: String, _ times: Int) -> String {
    var result: String = " "

    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }

    return result
}

func sayHello(to name: String, repeatCount times: Int) -> String {
    var result: String = " "

    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    return result
}

print(sayHello(to: "Chope", 2))
print(sayHello(to: "Chope", repeatCount: 2))


// 매개변수 기본값이 있는 함수의 정의와 사용
// 위의 ('전달인자 레이블이 없는 함수 정의와 사용'과 비슷한 함수)
func sayHello(_ name: String, times: Int = 3) -> String {
    var result: String = ""

    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    return result
}
print(sayHello("Hana"))
// Hello Hana! Hello Hana! Hello Hana!
// times 매개변수의 전달 값을 넘겨주지 않아 기본값 3을 반영해서 3번 출력
print(sayHello("Joe", times: 2))
// Hello Joe! Hello Joe!
// times 매개변수의 전달 값을 2로 넘겨주었기 때문에 전달 값을 반영해서 2번 출력


// 가변 매개변수와 입출력 매개변수
func sayHelloToFriends(me: String, friends names: String...) -> String {
    var result: String = ""

    for friend in names {
        result += "Hello \(friend)!" + " "
    }
    result += "I'm " + me + "!"
    return result
}

print(sayHelloToFriends(me: "Jin", friends: "Johansson", "Jay", "Wizplan"))
// Hello Johansson! Hello Jay! Hello Wizplan! I'm Jin!

print(sayHelloToFriends(me: "Jin"))
// I'm Jin!


// inout 매개변수의 활용
var numbers: [Int] = [1, 2, 3]

func nonReferenceParameter(_ arr: [Int]) {
    var copiedArr: [Int] = arr
    copiedArr[1] = 1
}

func referenceParameter(_ arr: inout [Int]) {
    arr[1] = 1
}

nonReferenceParameter(numbers)
print(numbers[1])       // 2

referenceParameter(&numbers)   // 참조를 표현하기 위해 & 붙여줌
print(numbers[1])       // 1
