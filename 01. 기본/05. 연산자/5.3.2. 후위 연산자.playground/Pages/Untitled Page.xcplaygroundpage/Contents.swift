
postfix operator **

postfix func ** (value: Int) -> Int{
    return value + 10
}

let valueA: Int = 5
let result: Int = valueA**      // 15

print(result)                   // 15


//하나의 피연산자에 전위 연산과 후위 연산을 한 줄에 사용하면 후위 연산을 먼저 한다.

prefix operator ^^
postfix operator ^^

prefix func ^^ (value: Int) -> Int {
    return value * value
}

postfix func ^^ (value: Int) -> Int {
    return value + 10
}

let five: Int = 5
let sqrtFivePlusTen: Int = ^^five^^
// 후위 연산인 5 + 10을 하고 난 후 값인 15, 전위 연산인 15 * 15 로 값이 255
