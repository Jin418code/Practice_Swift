struct CoordinatePoint {
    var x: Int = 0
    var y: Int = 0
}

class Position {
    lazy var point: CoordinatePoint = CoordinatePoint()
    let name: String

    init(name: String) {
        self.name = name
    }
}

let JinPosition: Position = Position(name: "Jin")

// 이 코드를 통해 point 프로퍼티로 처음 접근할 때
// point 프로퍼티의 CoordinatePoint가 생성됨
print(JinPosition.point)     // CoordinatePoint(x: 0, y: 0)
