for _ in 1...5 {
    print("play")
}
// play를 5번 출력함

// +=
var aa: Int = 4
for _ in 1...3{
     aa += 2
}
print(aa)

// *=
var ab: Int = 9
for _ in 1...3{
     ab *= 3
}
print(ab)

// /=
var ac: Double = 300
for _ in 1...3{
     ac /= 5
}
print(ac)


// for-in 반복 구문의 활용
for i in 0...2 {
    print(i)
}

for i in 0...5 {
    if i.isMultiple(of: 2){
        print(i)
        continue    //continue 키워드를 사용하면 바로 다음 시퀀스로 건너뜀
    }
     print("\(i) == 홀수")
}

//-------------


let helloSwift: String = "Hello Swift!"

for char in helloSwift {
        print(char)
}

//-------------

//
var result: Int = 1

for _ in 1...3 {
    result *= 10
}
// 시퀀스에 해당하는 값이 필요없다면 와일드 카드 식별자(_)를 사용하면 됨

print("10의 3제곱은 \(result)입니다.")
// 10의 3제곱은 1000입니다


// 기본 데이터 타입의 for-in 반복 구문 사용
// Dictionay
let friends: [String: Int] = ["Jay": 35, "Joe": 29, "Jenny": 31]

for tuple in friends {
    print(tuple)
}
/* (key: "Jay", value: 35)
(key: "Joe", value: 29)
(key: "Jenny", value: 31) */

// ------------
let 주소: [String: String] =
["도": "충청북도", "시군구": "청주시 청원구", "동읍면": "율량동"]

for (키, 값) in 주소 {
    print("\(키) : \(값)")
}
/* 동읍면 : 율량동
도 : 충청북도
시군구 : 청주시 청원구 */

// -------------
let 지역번호: Set<String> = ["02", "031", "032", "033"]

for 번호 in 지역번호 {
    print(번호)
}
//02 //031 //032 //033

// 나혼자 연습노트
for _ in 1...3 {
    var aab: String = "나는 개발자다!"
    print(aab)
}

for _ in 1...3 {
    print("나는 개발자다!")
}
