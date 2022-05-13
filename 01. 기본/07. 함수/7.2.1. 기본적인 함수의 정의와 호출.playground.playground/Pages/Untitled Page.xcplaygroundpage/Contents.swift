func hello(name: String) -> String {
    return "Hello \(name)!"
}

let helloJenny: String = hello(name: "Jenny")
print(helloJenny)

func introduce(name: String) -> String {
    // [return "제 이름은 " + name + "입니다"]와 같은 작동을 합니다.
    "제 이름은 " + name + "입니다"
}
// 제 이름은 Jenny입니다

let introduceJenny: String = introduce(name: "Jenny")
print(introduceJenny)



