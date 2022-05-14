var myName: String? = "Jin"

// 옵셔널이 아닌 변수에는 옵셔널 값이 들어 갈 수 없음. 추출해서 할당해줘야 함.
var Jin: String = myName!

myName = nil
Jin = myName!       // 런타임 오류

// if 구문 등 조건문을 이용해 조금 더 안전하게 처리해볼 수 있음
if myName != nil {
    print("My name is \(myName!)")
} else {
    print("myName == nil")
}
