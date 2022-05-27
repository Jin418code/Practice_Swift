// -3 | -2 | -1 | 0 | 1 | 2 | 3 | .... 이런 게임판이 있다는 가정
// 원점으로 이동하기 위한 함수
typealias MoveFunc = (Int) -> Int

func goRight(_ currentPosition: Int) -> Int {
    return currentPosition + 1
}

func goLeft(_ currentPosition: Int) -> Int {
    return currentPosition - 1
}

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
    return shouldGoLeft ? goLeft : goRight
}

var position: Int = 3   // 현 위치

let moveToZero: MoveFunc = functionForMove(position > 0)
print ("원점으로 갑시다.")
// 원점에 도착하면(현 위치가 0이면) 반복문 종료
while position != 0 {
        print("\(position)...")
        position = moveToZero(position)
}
print("원점 도착!")
3... 2... 1... //원점 도착!

// 중첩 함수의 사용
typealias MoveFunc = (Int) -> Int

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
    func goRight(_ currentPosition: Int) -> Int {
        return currentPosition + 1
    }
    
    func goLeft(_ currentPosition: Int) -> Int {
        return currentPosition - 1
    }

    return shouldGoLeft ? goLeft : goRight
}

var position: Int = -4   // 현 위치
// 현 위치가 0보다 작으므로 전달되는 인자 값은 false가 됨
// 그러므로 goRight(_:) 함수가 할당됨

let moveToZero: MoveFunc = functionForMove(position > 0)
// 원점에 도착하면(현 위치가 0이면) 반복문이 종료됨
while position != 0 {
    print(":\(position)...")
    position = moveToZero(position)
}
print("원점 도착!")
// -4... -3... -2... -1... 원점 도착!
