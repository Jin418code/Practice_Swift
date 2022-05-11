# 데이터 타입 고급

## 1. 데이터 타입 안심
> 처음 스위프트를 발표할 때 강조했던 안전성(Safe)이 가장 뚜렷하게 나오는 부분이다. <br/>
> 스위프트는 타입에 굉장히 민감하고 엄격하다. 서로 다른 타입끼리의 데이터 교환은 꼭 타입캐스팅(Type-Casting, 행변환)을 거쳐야한다. 새로운 인스턴스를 생성하여 할당하는 것이다.

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
- 이름이 지정되지 않은 타입으로, 프로그래미머가 마음대로 만드는 타입이다.
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
- 대괄호([])로 값을 묶어 배열을 표현한다.
- count 프로퍼티 확인을 통해 배열에 몇개의 요소가 있는지 확인 가능하다.
- C언어 배열처럼 버퍼(buffer)이다. 그러나 C언어처럼 고정되지 않고 버퍼의 크기를 필요에 따라 자동으로 조절해준다. 
- 같은 타입의 데이터를 일렬로 나열한 후 순서대로 저장하는 형태의 타입이다. 각기 다른 위치에 같은 값이 들어갈 수 있다.해당되는 인덱스를 넣어 가져올 수 있다. 잘못된 익덱스 접근은 익셉션 오류(Exception Error)가 발생한다. 맨 처음은 first, 맨 마지막은 last 프로퍼티를 통해 가져올 수 있다.
> firstIndex(Of:) : 해당 요소의 인덱스를 알아 낼 수 있음
> append(_:) : 맨 뒤에 요소 추가
> insert(_:at:) : 중간에 요소 삽입
> remove(_:) : 요소 삭제
✏️ 배열 인덱스는 0부터 시작함!

```swift
// [배열과 선언의 생성]

// 대괄호를 사용하여 배열임을 표현합니다.
var names: Array<String> = ["Jin", "chulsoo", "younghee", "Jack"]

// 위 선언과 정확히 동일한 표현입니다. [String]은 Arry<String>의 축약 표현임.
var names: [String] = ["Jin", "chulsoo", "younghee", "Jack"]

var emptyArray: [Any] = [Any]()        // Any 데이터를 요소로 갖는 빈 배열을 생성함.
var emptyArray: [Any] = Array<Any>()   // 위 선언과 정확히 같은 동작을 하는 코드임.

// 배열의 타입을 정확히 명시해줬다면 []만으로도 빈 배열을 생성할 수 있음.
var emptyArray: [Any] = []
print(emptyArray.isEmpty)    // true
print(names.count)           // 4

-------------


// [배열의 사용]

print(names[2])
names[2] = "Jenny"
print(names[2])
print(names[4])                 // 인덱스의 범위를 벗어낫기에 오류 발생함

names[4] = "Jan"                              // 인덱스의 범위를 벗어낫기에 오류 발생함
names.append("Elsa")                            // ["Jin", "chulsoo", "Jenny", "Jack", "Elsa"] / 맨 마지막에 Elsa 추가됨
names.append(contentsOf: ["John", "Max"])       // ["Jin", "chulsoo", "Jenny", "Jack", "Elsa", "John", "Max"]/ / 맨 마지막에 John과 Max가 추가됨
names.insert("happy", at: 2)                    // ["Jin", "chulsoo", "happy", "Jenny", "Jack", "Elsa", "John", "Max"] / 인덱스 2에 추가됨
names.insert(contentsOf: ["Jinhee", "Minsoo"], at: 5) // ["Jin", "chulsoo", "happy", "Jenny", "Jack", "Jinhee", "Minsoo", "Elsa", "John", "Max"] / 인덱스 5의 위치에 Jinhee와 Minsoo가 추가됨

print(names[4])
print(names.firstIndex(of: "Jin"))        // "Optional(0)\n" / 인덱스 확인 : 0, 첫번째르 뜻함
print(names.firstIndex(of: "Christal"))   // "nil\n" / 인덱스 확인 : 해당되는 이름의 인덱스가 없음 그래서 nil로 뜸
print(names.first)                        // Jin / 첫번째 인덱스 확인
print(names.last)                         // Max / 마지막 인덱스 확인

let firstItem: String = names.removeFirst() // ["Jin", "chulsoo", "happy", "Jenny", "Jack", "Jinhee", "Minsoo", "Elsa", "John", "Max"] 에서 첫번째인 Jin이 삭제됨
let lastItem: String = names.removeLast() // ["chulsoo", "happy", "Jenny", "Jack", "Jinhee", "Minsoo", "Elsa", "John", "Max"] 에서 마지막인 Max가 삭제됨
let indexZeroItem: String = names.remove(at: 0) //["chulsoo", "happy", "Jenny", "Jack", "Minsoo", "Elsa", "John"]에서 0번째에 있는 chulsoo가 삭제됨

print(firstItem)       // Jin
print(lastItem)        // Max
print(indexZeroItem)   // chulsoo
print(names)           // "["happy", "Jenny", "Jack", "Jinhee", "Minsoo", "Elsa", "John"] 모든 메서드를 사용후 나온 결과
```

### 4.2. 딕셔너리(Dictionary)
- 

### 4.3. 세트(Set)



