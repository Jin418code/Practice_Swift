var myName: String? = "Jin"

// 옵셔널 바인딩을 통한 임시 상수 할당
if let name = myName {
    print("My name is \(name)")
} else {
    print("myName == nil")
}
// My name is Jin

// 옵셔널 바인딩을 통한 임시 변수 할당
if var name = myName {
    name = "wizplan"    // 변수이므로 내부에서 변경 가능
    print("My name is \(name)")
} else {
    print("myName == nil")
}
// My name is wizplan

