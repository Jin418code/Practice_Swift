# 데이터 타입 고급

## 1. 데이터 타입 안심
- 처음 스위프트를 발표할 때 강조했던 안전성(Safe)이 가장 뚜렷하게 나오는 부분이다. <br/>
- 스위프트는 타입에 굉장히 민감하고 엄격하다. 서로 다른 타입끼리의 데이터 교환은 꼭 타입캐스팅(Type-Casting, 행변환)을 거쳐야한다. 새로운 인스턴스를 생성하여 할당하는 것이다.

### 데이터 타입 안심이란
- 스위프트는 컴파일 오류로 서로 다른 타입의 값 할당 실수를 줄일 수 있다. 이를 타입확인이라 하며 런타임 오류를 피할 수 있다.

### 타입 추론
- 변수나 상수를 명시하지 않아도 컴파일러가 할당된 값을 기준으로 판단후 결정한다.

<br/>

-------------

## 2. 타입 별칭
- 데이터 타입에 임의로 다른(별칭)을 부여할 수 있다. 

```swift
typealias MyInt = Int
typealias YourInt = Int
// MyInt, YourInt 둘다 같은 Int를 표현하는 방법
```

<br/>

-------------

## 3. 튜플(Tuple)
- 이름이 지정되지 않은 타입으로, 프로그래머가 마음대로 만드는 타입이다.
- 지정된 데이터의 묶음으로 파이썬의 튜플과 유사하다.

1 튜플 기본(익덱스 접근코드)
```swift
var person: (String, Int, Double) = ("Jin", 28, 179)
print("이름: \(person.0), 나이: \(person.1), 신장:\(person.2)")
```

2) 튜플 요소 이름 지정(각각의 인덱스에 이름 짓기)
```swift
var person: (name: String, age: Int, height: Double) = ("Jin", 28, 179)
```

3) 튜플 별칭 지정
```swift
typealias PersonTuple = (name: String, age: Int, height: Double)

let Jin: PersonTuple = ("Jin", 28, 179)
let Eric: PersonTuple = ("Eric", 20, 173)

print("이름: \(Jin.name), 나이: \(Jin.age), 신장: \(Jin.height)")
print("이름: \(Eric.name), 나이: \(Eric.age), 신장: \(Eric.height)"
```

<br/>

-------------

## 4. 컬렉션형
- 데이터를 묶어서 저장하고 관리할 수 있는 타입들을 말한다
- 배열, 딕셔너리, 세트 등이 있다. 

### 4.1. 배열(Array)
- 'Array라는 키워드'와 '타입 이름'의 조합이다.
- '대괄호([])'로 값을 묶어 배열을 표현한다.
- '같은 타입의 데이터를 일렬로 나열한 후 순서대로 저장하는 형태의 타입'이다. 각기 다른 위치에 같은 값이 들어갈 수 있다.해당되는 인덱스를 넣어 가져올 수 있다. 잘못된 익덱스 접근은 익셉션 오류(Exception Error)가 발생한다. 맨 처음은 first, 맨 마지막은 last 프로퍼티를 통해 가져올 수 있다.
- count 프로퍼티 확인을 통해 배열에 몇개의 요소가 있는지 확인 가능하다.
- C언어 배열처럼 버퍼(buffer)이다. 그러나 C언어처럼 고정되지 않고 버퍼의 크기를 필요에 따라 자동으로 조절해준다. 

> contains() = ()라는 멤버를 포함하는지 확인<br/>
> firstIndex(Of:) = 해당 요소의 인덱스를 알아 낼 수 있음<br/>
> append(_:) = 맨 뒤에 요소 추가 <br/>
> insert(_:at:) = 중간에 요소 삽입<br/>
> remove(_:) = 요소 삭제

✏️ 배열 인덱스는 0부터 시작함!
  주의! 비어있는 인덱스 접근은 잘못하면 프로그램 강제 종료가 될 수 있다.
```swift
var Strings: Array<String> = Array<String>()  // String타입의 Array라는 뜻
var Strings: [String] = [String]()
var Strings: [String] = []

let immutableArray = [1, 2, 3,] // let Array는 append, remove 등과 같은 메서드는 사용 불가

✏️ [String]은 Array<String>의 축약 표현임.
var emptyArray: [Any] = [Any]()        // Any 데이터를 요소로 갖는 빈 배열을 생성함.
var emptyArray: [Any] = Array<Any>()   // 위 선언과 정확히 같은 동작을 하는 코드임.
```

### 4.2. 딕셔너리(Dictionary)
- 'Dictionary라는 키워드'와 '키의 타입'과 '값의 타입 이름'의 조합이다.
- '대괄호([])'로 딕셔너리를 표현한다.
- '요소들이 순서없이 키와 값의 쌍으로 구성되는 타입'이다
- 딕셔너리 안에는 키가 하나이거나 여러 개일 수 있다.
- 단, 하나의 딕셔너리 안에서는 같은 이름을 중복해서 사용할 수 없다.
- 각 값에 키로 접근할 수 있다. 없는 키로 접근하면 오류 발생없이 nil로 반환한다. 
- [:] = 빈 딕셔너리를 뜻함
> removeValue(forKey: " ") = 키에 해당하는 값이 제거된 후 반환된다.
> 값에 'nil'을 할당해서 키를 없앨수 있음
```swift
// String이라는 키의 Any의 값을 가진다는 뜻
var anyDictionary: Dictionary<String, Any> = Dictionary<String, Any>()
var anyDictionary: Dictionary<String, Any> = [String: Any]()
var anyDictionary: [String: Any] = [String: Any]()
var anyDictionaty: StringAnyDictionary = StringAnyDictionary()
typealias SanyDictionaty = [String: Any] // typealias(타입 별칭)를 통해 더 단순하게 표현 가능함

let initalizedDictionary: [String: String] = ["name": "jin", "gender": "male"]
//let으로 name이라는 키에 jin이라는 값이 할당되어있음
let someValue: String = initalizedDictionary["name"]
//딕셔너리의 키인 "name"에 해당하는 값이 있을 수도 있고 없을수도 있는 그런 불확실성에 의해 작동 되지 않음. 이건 옵셔널에서 더 다룰 예정.
```
### 4.3. 세트(Set)
- 'Set라는 키워드'와 '타입 이름'의 조합이다. 
- 배열과 마찬가지로 대괄호([])로 값을 묶어 표현한다. 그러나 배열과 달리 줄여서 표현할 수 있는 축약형(예: Array<Int>를 [Int])이 없다.
- '같은 타임의 데이터를 순서 없이 하나의 묶음으로 저장하는 컬렉션 타입'이다.
- 세트 내의 값은 모두 유일한 값, 즉 중복된 값이 존재하지 않는다.
- 순서가 중요하지 않거나 각 요소가 유일한 값이어야 하는 경우에 사용한다.
- 또는 해시 가능한 값(스위프트의 기본 데이터 타입은 모두 해시 가능한 값)이어야 한다.
- isEmpty 프로퍼티를 통해 비어있는지 확인할 수 있고, count프로퍼티를 통해 갯수를 확인 가능하다.
- 집합(교집합, 합집합 등)을 구할 때 사용한다.
> contains() : 요소 확인
> count() : 요소 카운트
> insert() : 요소 추가
> remove() : 요소 삭제 후 반환
```swift
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

// 집합 메서드
let sortedUnion: [Int] = union.sorted()
// 같은 타입의 배열로 바뀜 [1,2,3,4,5,6,7]
let union: Set<Int> = setA.union(setB) 
// 합집합 {2,4,5,6,7,3,1,} 위랑 순서가 다르게 값이 나옴
let intersection: Set<Int> = setA.intersection(setB) // 교집합
let subtraction: Set<Int> = setA.subtractoin(setB) // 차집합
```
```swift
var names: Set<String> = Set<String>()   // 빈 세트 생성
var names: Set<String> = []              // 위 코드와 정확히 같음.
	
// Array와 마찬가지로 대괄호를 사용
var names: Set<String> = ["jin", "chulsoo", "younghee", "jin"]
// 그렇기에 타입 추론을 사용하면 컴파일러는 Set가 아닌 Array 타입으로 지정함
var numbers = [100, 200, 300]
	
print(type(of: numbers))    // Array<Int>로 나옴
print(names.isEmpty)        // false
print(names.count)          // 중복된 값(jin이 2개)은 허용되지 않아 4개가 아니라 3임
```
  
-------------

## 5. 열거형(enum)
- 연관된 항목들을 묶어서 표현할 수 있는 타입이다.
- 특정 타입들을 표시할 때 사용하기 좋다.
```swift
enum MediaType
  case audio
  case video
var mediaType: MediaType = .audio
```
- 열거형은 배열이나 딕셔너리와 달리 프로그래머가 정의해준 항복 값 외에는 추가/수정이 불가능하다.
	- 제한된 선택지를 주고 싶을 때
	- 정해진 값 외에는 입력받고 싶지 않을 때
	- 예상된 입력 값이 한정되어 있을 때
- 열거형의 예로는
  	- 무선통신 방식 : WiFi, 블루투스, LTE 등
  	- 학생 : 초등학생, 중학생, 고등학생 등
  	- 지역 : 강원도, 경기도, 경상도 등
- 스위프트에서의 열거형은 고유의 타입으로 인정되어 안정적이다. 즉 에러를 줄일 수 있다.
- 원시 값(Raw Value)의 형태로 (정수, 실수, 문자 등) 실제 값을 가질 수도 있고, 
  연관 값(Associated Values)을 이요하여 다른 언어의 공용체와 같은 역할이 가능하다.

  
### 5.1. 기본 열거형
- 'enum'이라는 키워드로 선언한다.
```swift
enum School {
    case primary
    case elementary
    case middle
    case high
    case college
    case university
}

// 각 항목은 그 자체가 고유의 값이며, 한 줄에 모두 표현 가능하다.

enum School {
    case primary, elementary, middle, high, college, university
}

// 열거형 변수의 생성 및 값 변경
var highestEducationLevel: School = School.university

// 위 코드와 같은 표현
var highestEducationLevel: school = .university

// 같은 타임인 School 내부의 항목으로만 highestEducationLevel의 값을 변경 가능함
highestEducationLevel = .graduate
```

### 5.2. 원시 값(Raw Value)
- rawValue라는 프로퍼티를 열거형 이름 오른쪽에 명시해주면 된다.
- 원시 값은 열거형의 선언에서 유일해야 하며 중복되면 안된다.
- 열거형이 정수형이나 문자열 타입의 원시 값을 갖는다면, 각각의 case에 원시 값을 할당하지 않아도 된다. 0이 첫벗째 case의 원시 값으로 할당되어 1씩 추가되는 오름차순으로 할당된다.
```swift
let highestEducationLevel: School = School.university
print ("저의 최종학력은 \(highestEducationLevel.rawValue) 졸업입니다.")
```

### 5.3. 연관 값
- 연관 값은 소괄호(())로 묶어 표현한다.
```swift
enum MainDish {
    case pasta(taste: String)
    case pizza(dough: String, topping: String)
    case chicken(withSauce: Bool)
    case rice
}
```

### 5.4. 항목 순회
- Castlerable 프로토콜을 사용한다.
  - 열거형의 모든 케이스를 알아야 할 때 열거형의 이름 뒤에 콜론(:), 한 칸 띄우고, Castlerable를 입력한다.
```swift
enum School: CaseIterable {
    case primary
    case elementary
    case middle
    case high
    case college
    case university
}

let allCases: [School] = School.allCases
print(allCases)
// School.primary, School.elementary, School.middle, School.high, School.college, School.university
```

### 5.5. 순환 열거형
- indirect 키워드를 사용한다.
- 특정 항목에만 적용하고 싶다면 case 키워드 앞에 indirect, 열거형 전체에 적용하고 싶으면 enum 키워드 앞에 indirect를 붙이면 된다.
```swift
// 특정 항목에 순환 열거형 항목 명시
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}
```
```swift
// 열거형 전체에 순환 열거형 명시
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}
```

### 5.6. 비교 가능한 열거형
- Comparable 프로토콜을 채택하면 준수하는 열거형은 각 케이스를 비교할 수 있다.
- 앞에 위치한 케이스가 더 작은 값이 된다.
- case의 순서에 따라 위치가 정해져서 값이 나온다.
