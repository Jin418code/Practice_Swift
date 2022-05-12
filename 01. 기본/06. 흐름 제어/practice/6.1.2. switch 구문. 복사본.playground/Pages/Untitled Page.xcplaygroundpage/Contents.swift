// switch 구문 기본 구현
let integerValue: Int = 5

switch integerValue {
case 0:
    print("Value == zero")              // 하나의 값으로 case를 만들 수 있고
case 1...10:
    print("Value == 1~10")              // 범위를 사용할 수도 있음
    fallthrough
case Int.min..<0, 101..<Int.max:
    print("Value < 0 or Value > 100")   // fallthrough 키워드로 다음 case에도 실행됨
    break
default:
    print("10 < Value <= 100")
}
// Value == 1~10
// Value < 0 or Value > 100


// 부동소수 타입의 범위 연산을 통한 switch case 구성
let doubleValue: Double = 3.0

switch doubleValue {
case 0:
    print("Value == zero")
case 1.5...10.5:
    print("1.5 <= Value <= 10.5")
default:
    print("Value == \(doubleValue)")
}
// 1.5 <= Value <= 10.5


// 문자열 switch case 구성
let stringValue: String = "Liam neeson"

switch stringValue {
case "Jin":
    print("He is Jin")
case "Jay":
    print("He is Jay")
case "Jenny", "Joker", "Nova":
    print("He or She is \(stringValue)")
default:
    print("\(stringValue) said 'I don't know who you are'")
}

// Liam Neeson said 'I don't know who you are'


// 잘못된 case 사용
case "Jenny":
// stringValue가 "Jenny"에 해당할 때 실행될 코드가 있어야 함. 없어서 에러 뜸.


 fallthrough
let stringValue: String = "Joker"

switch stringValue {
case "Jin":
    print("He is Jin")
case "Jay":
    print("He is Jay")
case "Jenny":
    fallthrough                     // fallthrough라 계속 진행
case "Joker":
    fallthrough                     // fallthrough라 계속 진행
case "Nova":
    print("He or She is \(stringValue)")   // 여기서 결과가 나옴
default:
    print("\(stringValue) said 'I don't know who you are'")
}
// He or She is joker


// 튜플 switch case 구성
typealias NameAge = (name: String, age: Int)

let tupleValue: NameAge = ("Jin", 28)

switch tupleValue {
case ("Jin", 50):
    print("정확히 맞췄습니다!")
default:
    print("누굴 찾나요?")
}
// 누굴 찾나요?


// 와일드카드 식별자를 사용한 튜플 switch case 구성
typealias NameAge = (name: String, age: Int)

let tupleValue: NameAge = ("Jin", 99)

switch tupleValue {
case ("Jin", 28):
    print("정확히 맞췄습니다!")
case ("Jin", _):
    print("이름만 맞았습니다. 나이는 \(tupleValue.age)입니다.")
case (_, 28):
            print("나이만 맞았습니다. 이름은 \(tupleValue.name)입니다.")
default:
    print("누굴 찾나요?")
}
// 이름만 맞았습니다. 나이는 99살입니다.


// 값 바인딩을 사용한 튜플 switch case 구성
typealias NameAge = (name: String, age: Int)

let tupleValue: NameAge = ("Jin", 99)

switch tupleValue {
case ("Jin", 28):
    print("정확히 맞췄습니다!")
case ("Jin", let age):
    print("이름만 맞았습니다. 나이는 \(tupleValue.age)입니다.")
case (let name, 28):
    print("나이만 맞았습니다. 이름은 \(tupleValue.name)입니다.")
default:
    print("누굴 찾나요?")
}
// 이름만 맞았습니다. 나이는 99입니다


// where을 사용하여 switch case 확장
let 직급: String = "사원"
let 연차: Int = 1
let 인턴인가: Bool = false

switch 직급 {
case "사원" where 인턴인가 == true:
    print("인턴입니다.")
case "사원" where 연차 < 2 && 인턴인가 == false:
    print("신입사원입니다.")
case "사원" where 연차 > 5:
    print("연식 좀 된 사원입니다.")
case "사원":
    print("사원입니다.")
case "대리":
    print("대리입니다.")
default:
    print("사장입니까?")
}
// 신입사원입니다.


// 열거형을 입력 값으로 받는 switch 구문
enum School {
    case primary, elementary, middle, high, university
}

let 최종학력: School = School.university

switch 최종학력 {
case .primary:
    print("최종학력은 유치원입니다.")
case .elementary:
    print("최종학력은 초등학교생압니다.")
case .middle:
    print("최종학력은 중학교입니다.")
case .high:
    print("최종학력은 고등학교입니다.")
case .university:
    print("최종학력은 대학교입니다.")
}
// 최종학력은 대학교입니다.


// Menu 열거형의 모든 case 처리하는 switch 구문의 상태
enum Menu {
    case chicken
    case pizza
}

let lunchMenu: Menu = .chicken

switch lunchMenu {
case .chicken:
    print("반반 무많이")
case .pizza:
    print("핫소스 많이 주세요")
case _:         // case default: 와 같은 표현입니다.
    print("오늘 메뉴가 뭐죠?")
}


// 차후에 Menu 열거형에 추가한 case를 처리하지 않으면 경고를 내어줄 unknown 속성
enum Menu {
    case chicken
    case pizza
    case hamburger
}

let lunchMenu: Menu = .chicken

switch lunchMenu {
case .chicken:
    print("반반 무많이")
case .pizza:
    print("핫소스 많이 주세요")
@unknown case _:
    print("오늘 메뉴가 뭐죠?")
}


// if문을 switch문으로 바꿔보기
// if문
func loveCalculator() {
    let loveScore = Int.random(in: 0...100)

    if loveScore > 80 {
        print("당신은 서로 많이 사랑합니다.")
    } else if loveScore > 40 && loveScore <= 80  {
        print("당신은 썸을 타고 있습니다.")
    } else {
        print("당신은 평생 혼자입니다..")
    }
}
loveCalculator()

// switch문
func loveCalculator() {
    let loveScore = Int.random(in: 0...100)

switch loveScore {
    case 81...100:
      print("당신은 서로 많이 사랑합니다.")
    case 41..<81:
      print("당신은 썸을 타고 있습니다.")
    case ...40:
      print("당신은 평생 혼자입니다..")
    default:
      print("다시 실행해주세요")
    }
}
loveCalculator()
