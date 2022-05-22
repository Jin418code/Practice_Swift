# inout
- 매개변수명 바꾸기
   - 매개변수명은 let(상수)과 같이 변경 불가하지만 inout을 사용해 매개변수명을 변경 할 수 있다.
- inout을 사용하면 매개변수를 외부에서도 사용가능하다.
   - 호출하기 위해서는 '&'를 붙여야한다.
```swift
func sayName(_ name: String) {
    print("안녕?! 난 \(name)이야")
}
sayName("jin")
// 안녕?! 난 jin이야

// 위 아래 차이 구분하기

func sayHi(_ name: inout String) {
    name = "개발하는 " + name
    print("안녕? 난 \(name)이야")
}
var name = "jin"
sayHi(&name)
// sayHi("jin")은 안됨
// 왜냐하면 이 자체가 상수이기 때문에 변경이 안됨
// 위에 var로 변수로 담아서 언급해야함
```

```swift
var myValue = 10
func doubleValue (value: inout Int) -> Int {
// 매개변수타입 이전에 'inout'을 씀
    value += value
    return(value)
}
print(myValue)
print(doubleValue(value: &myValue))
// call by reference하고 싶은 변수에 &붙여서 호출(&주소 연산자)
// myValue에 해당하는 수가 (value: inout Int)로 넘어가서 출력
print(myValue)
// myValue이 변경되서 20으로 나옴
//10, 20, 20
```
