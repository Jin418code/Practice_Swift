// 메서드로 구현된 접근자와 설정자
struct CoordinatePoint {
    var x: Int  // 저장 프로퍼티
    var y: Int  // 저장 프로퍼티

// 대칭점을 설정하는 메서드 - 설정자
// Self는 타입 자기 자신을 뜻함
// Self 대신 CoordinatePoint를 사용해도 됨.
    func oppositePoint() -> Self {
        return CoordinatePoint(x: -x, y: -y)
    }
    // 대칭점을 설정하는 메서드 - 설정자
    // mutating 키워드에 관한 내용은 10.2.1절에서 다룸
    mutating func setOppositePoint(_ opposite: CoordinatePoint) {
        x = -opposite.x
        y = -opposite.y
    }
}

var JinPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)

// 현재 좌표
print(JinPosition)                   //  10, 20

// 대칭 좌표
print(JinPosition.oppositePoint())   // -10. -20

// 대칭 좌표를 (15, 10)으로 설정하면
JinPosition.setOppositePoint(CoordinatePoint(x: 15, y: 10))

// 현재 좌표를 -15, -10으로 설정됨
print(JinPosition)          // -15, -10


// 연산 프로퍼티의 정의와 사용
struct CoordinatePoint {
    var x: Int  // 저장 프로퍼티
    var y: Int  // 저장 프로퍼티

    // 대칭 좌표
    var oppositePoint: CoordinatePoint {        // 연산 프로퍼티
        // 접근자
        get {
            return CoordinatePoint(x: -x, y: -y)
        }

        // 설정자
        set(opposite) {
            x = -opposite.x
            y = -opposite.y
        }
    }
}

var JinPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)

// 현재 좌표
print(JinPosition)                   // 10, 20

// 대칭 좌표
print(JinPosition.oppositePoint)     // -10, -20

// 대칭 좌표를 (15, 10)으로 설정하면
JinPosition.oppositePoint = CoordinatePoint(x: 15, y: 10)

// 현재 좌표는 -15, -10으로 설정됨
print(JinPosition)          // -15, -10


// 매개변수 이름을 생략한 설정자
struct CoordinatePoint {
    var x: Int      // 저장 프로퍼티
    var y: Int      // 저장 프로퍼티

// 대칭 좌표
    var oppositePoint: CoordinatePoint {       // 연산 프로퍼티

        get {
// getter(접근자)
// 이곳에서 return 키워드를 생략 할 수 있음
            return CoordinatePoint(x: -x, y: -y)
        }
        set {
            x = -newValue.x
            y = -newValue.y
        }
// setter(설정자)
    }
}


// 읽기 전용 연산 프로퍼티
struct CoordinatePoint {
    var x: Int      // 저장 프로퍼티
    var y: Int      // 저장 프로퍼티
    
    // 대칭 좌표
    var oppositePoint: CoordinatePoint {     // 연산 프로퍼티
// getter
        get {
            return CoordinatePoint(x: -x, y: -y)
        }
    }
}

var JinPosition: CoordinatePoint = CoordinatePoint(x: 10, y: 20)

// 현자 좌표
print(JinPosition)          // 10, 20

// 대칭 좌표
print(JinPosition.oppositePoint)  // - 10, -20

// setter를 구현하지 않았으므로 오류
JinPosition.oppositePoint = CoordinatePoint(x: 15, y: 10)
