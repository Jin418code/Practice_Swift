# Swift 기초 

## 1. Swift?

> 최초에는 'Safe, Modren, Powerful'을 특징으로 발표했지만 오픈소스로 전환하면서 Safe, Fast, Expressive로 변경했다.
스위프트는 다중 패러다임 프로그래밍 언어지만 함수형과 프로토콜 지향 프로그래밍을 강조한다.
> 

### 2. 기본 명명 규칙

> 변수, 상수, 함수, 메서드, 타입 등의 이름은 유니코드에서 지원하는 어떤 문자든 사용 가능하다 <br/>
<u>하지만</u> 스위프트의 예약어와 키워드, 해당 코드 범위내에서 미리 사용되는 기존 이름과 동일한 이름, 연산자로 사용되는 기호(+,-,*,/), 숫자로 시작하는 이름, 공백이 포함된 이름은 안된다

----------------

 <br/>

## 콘솔 로그

> 애플리케이션 내부 로직의 흐름을 알 수 있도록 출력해주는 정보를 말한다.

- `print(함수)`
public func print(iteas: Any..., separator: String = default, treminator: String = default)로 정의한다.

- `dump(함수)`
print보다 자세히 정보를 출력한다.

----------------

<br/>


## 문자열 보간법

> 변수 또는 상수 등의 값을 문자열 내에 나타내고 싶을 때 사용한다. 
> /(변수나 상수)의 형태로 표기하면 문자열로 치환된다. 치환은  customStringConvertible 프로토콜을 준수하는 description 프로퍼티로 구현한다.

```
let name: String = "Jin
print("My name is \(name)")
```
