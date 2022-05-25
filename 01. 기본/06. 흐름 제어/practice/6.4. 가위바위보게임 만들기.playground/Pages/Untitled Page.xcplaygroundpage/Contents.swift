// 1) 가위 => 0
// 2) 바위 => 1
// 3) 보  => 2

var computerChoice = Int.random(in: 0...2)
var myChoice = Int.random(in: 0...2)

switch computerChoice {
case 0:
    print("가위")
case 1:
    print("바위")
case 2:
    print("보")
default:
    break
}

switch myChoice {
case 0:
    print("가위")
case 1:
    print("바위")
case 2:
    print("보")
default:
    break
}

var result = computerChoice - myChoice

switch result {
case -2:
    print("당신이 졌습니다.")
case -1:
    print("당신이 이겼습니다.")
case 0:
    print("비겼습니다")
case 1:
    print("당신이 졌습니다")
case 2:
    print("당신이 이겼습니다")
default:
    break
}
