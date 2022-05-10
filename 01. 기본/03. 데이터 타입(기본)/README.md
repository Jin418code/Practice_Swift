# 데이터 타입(기본)

## 데이터 타입의 종류
> 프로그램에서 다루는 데이터의 종류를 뜻하며 <br/>
> 스위프트의 모든 데이터 타입 이름은 첫 글자가 대문자인 **대문자 카멜케이스**를 사용함

<br/>

-------------



## Int와 UInt
- 정수 타입
- max와 min 프로퍼티로 최댓값과 최솟값 확인이 가능하다.
- 데이터 크기 타입에 따라 분리된다
  - 32bit에서는 Int32, UInt32 타입으로 지정된다.

### Int
- (+,-)부호를 포함하는 정수를 뜻함

### UInt
- (-)부호를 포함하지 않는 0을 포함한 양의 정수를 뜻함
- UInt는 부호없는 정수 타입이 필요한 

```swift
var integer: Int = -100
let unsignedInteger: UInt = 50 // UInt 타입에는 음수값 할당 안됨.

print("integer 값: \(integer), unsignedInteger 값: \(unsignedInteger)")
print("Int 최댓값: \(Int.max), Int 최솟값: \(Int.min)")
print("UInt 최댓값: \(UInt.max), UInt 최솟값: \(UInt.min)")

let largeInteger: Int64 = Int64.max
let smallUnsignedInteger: UInt8 = UInt8.max
print("Int64 최댓값: \(largeInteger), UInt8 최댓값: \(smallUnsignedInteger)")

let tooLarge: Int = Int.max + 1  //Int의 표현 범위를 초과해서 오류남
let cannotBeNegetive: UInt = -5  //UInt는 음수가 될 수 없기에 오류남

integer = unsignedInteger        //스위프트에서는 Int와 UInt는 다른 타입!
integer = Int(unsignedInteger)   //Int 타입의 값으로 할당해야 함


// 진수별 정수 표현

let decimalInteger: Int = 28
let binaryInteger: Int = 0b11100
let octalInterget: Int = 0o34
let hexadecimalInteger: Int = 0x1c
```

<br/>

### 진수에 따라 정수 표현이 바뀜
> 10진수 : 평소 쓰는 방법이랑 같음 <br/>
>  2진수 : 접두어 0b를 사용함 <br/>
>  8진수 : 접두어 0o를 사용함 <br/>
> 16진수 : 접두어 0x를 사용함 <br/>

```swift
let decimalInteger: Int = 28
let binaryInteger: Int = 0b11100
let octalInterget: Int = 0o34
let hexadecimalInteger: Int = 0x1c
```

<br/>

-------------
## Bool
- 참(true) 또는 거짓(false)만 값으로 가진다.

```swift
var boolean: Bool = true
boolean.toggle()   //true - false 반전
let IamJin: Bool = true
let isTimeUnlimited: Bool = false
print("시간은 무한합니까?: \(isTimeUnlimited)")
```

<br/>

-------------

## Float와 Double
- 부동소수점을 사용하는 실수, 흔히 소수점 자리가 있는 수를 말한다.
- 정수타입보다 넓은 범위의 수를 표현할 수 있다.
  
✓ 스위프트 4.2버전부터 임의의 수를 만드는 `random(in:)` 메서드가 추가됨
  정수와 실수 모두 임의의 수로 만들 수 있음
  ```swift
  Int.random(in: -100...100)
  UInt.random(in: 1...30)
  Double.random(in: 1.5...5.5)
  Float.random(in: -3.5...6.5)
  ```
  
### Float
- 32비트 부동소수를 표현한다.
  
### Double
- 64비트 부동소수를 말한다
  
<br/>

-------------
  
## Characrer
- 단 하나의 문자를 의미한다.
- 유니코드가 지원하는 모든 언어 및 특수기호 등을 사용 가능하다.
- 문자를 표현하기 위해서는 큰따옴표(")를 사용해 표현한다.
