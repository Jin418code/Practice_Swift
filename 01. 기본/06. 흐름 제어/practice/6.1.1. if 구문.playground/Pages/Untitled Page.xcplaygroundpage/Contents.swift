// if 구문 기본 표현
let first: Int  = 5
let second: Int = 7

if first > second {
    print("first > second")
} else if first < second {
    print("first < second")
} else  {
    print("first == second")
}
// first < second

// if 구문의 다양한 구현(소괄호가 없는 코드)
let first: Int = 5
let second: Int = 5
var biggerValue: Int = 0

if first > second {
    biggerValue = first
} else if first == second {
    biggerValue = first             // 5
// 조건 충족됨, 다음 조건들 부터는 충족하더라도 이미 first == second 라는 조건이 먼저 충족돼 다음 조건은 실행되지 않음
} else if first < second {
    biggerValue = second
} else if first == 5 {
    biggerValue = 100
}

// if 구문의 다양한 구현(소괄호가 있는 코드)
let first: Int = 5
let second: Int = 5
var biggerValue: Int = 0

if (first > second) {
    biggerValue = first
} else if (first == second) {
    biggerValue = first
// 조건 충족됨, 다음 조건들 부터는 충족하더라도 이미 first == second 라는 조건이 먼저 충족돼 다음 조건은 실행되지 않음
} else if (first < second) {
    biggerValue = second
} else if (first == 5) {
    biggerValue = 100
}
print(biggerValue)
