enum School : String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college = "대학"
    case university = "대학교"
}

let highestEducationLevel: School = School.university
print ("저의 최종학력은 \(highestEducationLevel.rawValue) 졸업입니다.")


// 열거형의 원시 값 일부 지정 및 자동처리
enum School : String {
    case primary = "유치원"
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
    case college
    case university
}

print(School.elementary.rawValue)

enum Numbers: Int {
    case zero
    case one
    case two
    case ten = 10    // 값을 안 정해주면 3으로 나옴
}

print("\(Numbers.zero.rawValue), \(Numbers.one.rawValue), \(Numbers.two.rawValue), \(Numbers.ten.rawValue)")


// 원시 값을 통한 열거형 초기화
let primary = School(rawValue: "유치원")       // primary / 열거형이 원시 값을 갖는 열거형일 때, 원시형의 원시 값을 통해 열거형 변수 또는 상수 생성 가능
let university = School(rawValue: "대학교")    // 올바르지 않은 원시 값을 통해 생성하려면 nil로 반환함.

let one = Numbers(rawValue: 1)               // one
let three = Numbers(rawValue: 10)            // nil

let zero: String = "hello"
print(Numbers.zero.rawValue)            // 열거형 추가/ 수정 불가

