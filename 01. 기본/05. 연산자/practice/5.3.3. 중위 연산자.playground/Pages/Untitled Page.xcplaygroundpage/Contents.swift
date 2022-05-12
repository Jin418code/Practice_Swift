// String 타입의 contains(_:) 메서드를 사용하기 위해 Foundation 프레임워크를 임포트 합니다.
import Foundation

infix operator ** : MultiplicationPrecedence

func  ** (lhs: String, rhs: String) -> Bool {
    return lhs.contains(rhs)
}

let helloJin: String = "Hello Jin"
let Jin: String = "Jin"
let isContainsJin: Bool = helloJin ** Jin

