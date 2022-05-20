// 저장 프로퍼티의 선언 및 인스턴스 생성
// 좌표
struct CoordinatePoint {
    var x: Int      // 저장 프로퍼티
    var y: Int      // 저장 프로퍼티
}

// 구조체에는 기본적으로 저장 프로퍼티를 매개변수로 갖는 이니셜라이저가 있음
let JinPoint: CoordinatePoint = CoordinatePoint(x: 10, y:5)

// 사람의 위치 정보
class Position {
    var point: CoordinatePoint
    // 저장 프로퍼티(변수) - 위치(point)는 변경될 수 있음을 뜻함
    let name: String        // 저장 프로퍼티(상수)

    // 프로퍼티 기본값을 지정해주지 않는다면 이니셜라이저를 따로 정의해주어야 함
    init(name: String, currentPoint: CoordinatePoint){
    self.name = name
    self.point = currentPoint
    }
}

// 사용자 정의 이니셜라이저를 호출해야만 함
// 그렇지 않으면 프로퍼티 초깃값을 할당할 수 없기 때문에 인스턴스 생성이 불가능함
let JinPosition: Position = Position(name: "Jin", currentPoint: JinPoint)


// 저장 프로퍼티의 초깃값 지정
// 좌표
struct CoordinatePoint {
    var x: Int = 0     // 저장 프로퍼티
    var y: Int = 0     // 저장 프로퍼티
}

// 프로퍼티의 초깃값을 할당했다면 굳이 전달인자로 초깃값을 넘길 필요 없음
let JinPoint: CoordinatePoint = CoordinatePoint()

// 물론 기존에 초깃값을 할당 할 수 있는 이니셜라이저도 사용 가능함
let wizplanPoint: CoordinatePoint = CoordinatePoint(x: 10, y: 5)

print("Jin's point : \(JinPoint.x), \(JinPoint.y)")
// Jin's point : 0, 0

print("wizplan's point : \(wizplanPoint.x), \(wizplanPoint.y)")
// wizplan's point : 10, 5
// 사람의 위치 정보
class Position {
    var point: CoordinatePoint = CoordinatePoint()  // 저장 프로퍼티
    var name: String = "Unknown"                    // 저장 프로퍼티
}

// 초깃값을 지정해줬다면 사용자 정의 이니셜라이저를 사용하지 않아도 됨
let JinPosition: Position = Position()

JinPosition.point = JinPoint
JinPosition.name = "Jin"


// 옵셔널 저장 프로퍼티
// 좌표
struct CoordinatePoint {
    // 위치는 x, y 값이 모두 있어야 하므로 옵셔널이면 안 됨
    var x: Int
    var y: Int
}

// 사람의 위치 정보
class Position {
    // 현재 사람의 위치를 모를 수도 있음 - 옵셔널
    var point: CoordinatePoint?
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

// 이름은 필수지만 위치는 모를 수 있음
let JinPosition: Position = Position(name: "Jin")

// 위치를 알게되면 그 때 위치 값을 할당함
JinPosition.point = CoordinatePoint(x: 20, y: 10)
