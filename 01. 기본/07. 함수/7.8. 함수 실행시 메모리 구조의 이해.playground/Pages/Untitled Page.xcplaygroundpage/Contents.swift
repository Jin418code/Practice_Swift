// 1
var total: Int = 0    // 실제 전역변수라면 (데이터영역)

func square(_ i: Int) -> Int {     // x 제곱
    return i * i
}

func squareOfSum(_ x: Int, _ y: Int) -> Int {    // (x + y)(x + y)
    var z = square(x + y)
    return z
}

func startFunction() {
    var a = 4
    var b = 8
    total = squareOfSum(a, b)
}
// 144
startFunction()


// 2
var total: Int = 0    // 실제 전역변수라면 (데이터영역)

func square(_ i: Int) -> Int {     // x 제곱
    return i * i
}

func squareOfSum(_ x: Int, _ y: Int) -> Int {    // (x + y)(x + y)
    var z = square(x + y)
    return z
}

func startFunction() {
    var a = 4
    var b = 8
    total = squareOfSum(a, b)
}
// 144
startFunction()
