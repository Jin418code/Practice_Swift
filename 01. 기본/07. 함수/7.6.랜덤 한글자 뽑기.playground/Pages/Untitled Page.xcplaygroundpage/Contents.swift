// 1
func someRandomString(_ x: String) -> String {
    return String(x.randomElement()!)
}

someRandomString("HelloIam")

// 2
func someRandomString(_ x: String) -> String {
   let someString = String(x.randomElement()!)
/*
!(옵셔널 강제 언래핑)이 있는 이유는 .randomElement()가 옵셔널 타입이고
String으로 감싼 이유는 .randomElement()가 character를 return하기 때문
함수부의 return을 character로 바꿔도 됨
이 경우는 String()으로 감쌀 필요없음
*/
   return someString
}

someRandomString("HelloIam")

// 3
func someRandomString(_ x: String) -> Character {
    let someString = x.randomElement()!
    return someString
}

someRandomString("HelloIam")
