struct BasicInformation {
    var name: String
    var age: Int
}
// 프로퍼티 이름(name, age)으로 자동 생성된 이니셜라이저를 사용하여 구조체를 생성
var JinInfo: BasicInformation = BasicInformation(name: "Jin", age: 88)
JinInfo.age = 100       // 변경 가능
JinInfo.name = "Seba"   // 변경 가능

// 프로퍼티 이름(name, age)으로 자동 생성된 이니셜라이저를 사용하여 구조체 생성
let SebaInfo: BasicInformation = BasicInformation(name: "Seba", age: 99)
SebaInfo.age = 100       // 변경 불가 / 상수
JennyInfo.name = "Seba"   // 변경 불가 / Jenny 없음
