var myName: String! = "Jin"
print(myName)
myName = nil

// 암시적 추출 옵셔널도 옵셔널이므로 당연히 바인딩 사용 가능
if let name = myName {
    print("My name is \(name)")
} else {
    print("myName == nil")
}
// myName == nil

myName.isEmpty    // 오류
