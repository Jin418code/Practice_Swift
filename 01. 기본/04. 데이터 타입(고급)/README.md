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
- 'Array라는 키워드'와 '타입 이름'의 조합이다.
- '대괄호([])'로 값을 묶어 배열을 표현한다.
- '같은 타입의 데이터를 일렬로 나열한 후 순서대로 저장하는 형태의 타입'이다. 각기 다른 위치에 같은 값이 들어갈 수 있다.해당되는 인덱스를 넣어 가져올 수 있다. 잘못된 익덱스 접근은 익셉션 오류(Exception Error)가 발생한다. 맨 처음은 first, 맨 마지막은 last 프로퍼티를 통해 가져올 수 있다.
- count 프로퍼티 확인을 통해 배열에 몇개의 요소가 있는지 확인 가능하다.
- C언어 배열처럼 버퍼(buffer)이다. 그러나 C언어처럼 고정되지 않고 버퍼의 크기를 필요에 따라 자동으로 조절해준다. 
> firstIndex(Of:) : 해당 요소의 인덱스를 알아 낼 수 있음
> append(_:) : 맨 뒤에 요소 추가
> insert(_:at:) : 중간에 요소 삽입
> remove(_:) : 요소 삭제
✏️ 배열 인덱스는 0부터 시작함!

```swift
// [배열과 선언의 생성]-----------

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


// [배열의 사용]----------

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
- 'Dictionary라는 키워드'와 '키의 타입'과 '값의 타입 이름'의 조합이다.
- '요소들이 순서없이 키와 값의 쌍으로 구성되는 타입'이다
- 딕셔너리 안에는 키가 하나이거나 여러 개일 수 있다.
- 단, 하나의 딕셔너리 안에서는 같은 이름을 중복해서 사용할 수 없다.
- 각 값에 키로 접근할 수 있다. 없는 키로 접근하면 오류 발생없이 nil로 반환한다. 
> removeValue(forKey:) 메서드를 사용해 키에 해당하는 값이 제거된 후 반환된다.
```swift
// [딕셔너리의 선언과 생성]---------

// typealias(타입 별칭)를 통해 더 단순하게 표현 가능함
typealias StringIntDictionary = [String: Int]

////키는 String, 값은 Int 타입인 빈 딕셔너리를 생성
var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()

//// 위 선언과 같은 표현
var numberForName: [String: Int] = [String: Int]()

// 위 코드와 같은 동작을 함
var naumberForName: StringIntDictionary = StringIntDictionary()

// 딕셔너리의 키와 값을 정확히 명시했다면 [:]만으로도 빈 딕셔너리를 생성 가능함
var numberForName: [String: Int] = ["jin": 100, "chulsoo": 200, "jenny":300]

print(numberForName.isEmpty)    //false
print(numberForName.count)      // 3


// [딕셔너리의 사용]---------
print(numberForName["chulsoo"])
print(numberForName["minji"])

numberForName["chulsoo"] = 150  // 원래의 값 200을 150으로 바꿈
print(numberForName["chulsoo"])

numberForName["max"] = 999      // max라는 키로 999라는 값을 추가함
print(numberForName["max"])     // 999

print(numberForName.removeValue(forKey: "jin"))

// 위에서 jin에 해당하는 값이 이미 삭제되었으므로 nil로 변환됨
// 키에 해당하는 값이 없으면 기본값으로 돌려주게 되어 있음
print(numberForName.removeValue(forKey: "jin"))

// jin 키에 해당하는 값이 없으면 기본으로 0으로 반환됨
print(numberForName["jin", default: 0])


```

### 4.3. 세트(Set)
- 'Set라는 키워드'와 '타입 이름'의 조합이다. 
- '같은 타임의 데이터를 순서 없이 하나의 묶음으로 저장하는 컬렉션 타입'이다.
- 세트 내의 값은 모두 유일한 값, 즉 중복된 값이 존재하지 않는다.
- 순서가 중요하지 않거나 각 요소가 유일한 값이어야 하는 경우에 사용한다.
- 또는 해시 가능한 값(스위프트의 기본 데이터 타입은 모두 해시 가능한 값)이어야 한다.
- 배열과 마찬가지로 대괄호([])로 값을 묶어 표현한다. 그러나 배열과 달리 줄여서 표현할 수 있는 축약형(예: Array<Int>를 [Int])이 없다.
- isEmpty 프로퍼티를 통해 비어있는지 확인할 수 있고, count프로퍼티를 통해 갯수를 확인 가능하다.
> insert(_:) : 요소 추가
> remove(_:) : 요소 삭제 후 반환

```swift
// [세트의 선언과 생성]----------
var names: Set<String> = Set<String>()   // 빈 세트 생성
var names: Set<String> = []              // 빈 세트 생성

// Array와 마찬가지로 대괄호를 사용
var names: Set<String> = ["jin", "chulsoo", "younghee", "jin"]

// 그렇기에 타입 추론을 사용하면 컴파일러는 Set가 아닌 Array 타입으로 지정함
var numbers = [100, 200, 300]
print(type(of: numbers))    // Array<Int>로 나옴

print(names.isEmpty)        // false
print(names.count)          // 3 / 중복된 값은 허용되지 않아 4개가 아니라 3임


// [세트의 사용]-----------
names.insert("jenny")
print(names.count)

print(names.remove("chulsoo"))  // chulsoo 삭제
print(names.remove("john"))     // nil


// [세트의 활용 - 집합연산]---------
let EnglishClassStudent: Set<String> = ["john", "chulsoo", "jin"]
let KoreanClassStudnet: Set<String> = ["jenny", "jin", "chulsoo", "hana", "minsoo"]

// 1. 교집합 = jin, chulsoo
let intersectSet: Set<String> = EnglishClassStudent.intersection(KoreanClassStudnet)

// 2. 여집합의 합(배타적 논리합) = john, jenny, hana, minsoo
let symmetricDiffset: Set<String> = EnglishClassStudent.symmetricDifference(KoreanClassStudnet)

// 3. 합집합 = minsoo, jenny john, jin, chulsoo, hana
let unionSet: Set<String> = EnglishClassStudent.union(KoreanClassStudnet)

// 4. 차집합 = john
let subtractSet: Set<String> = EnglishClassStudent.subtracting(KoreanClassStudnet)
// 4.1 차집합 순서 변경으로 값의 변화 = jenny, minsoo, hana
let subtractSet: Set<String> = KoreanClassStudnet.subtracting(EnglishClassStudent)


// [세트의 활용 - 포함관계 연산]
let 새: Set<String> = ["비둘기", "닭", "기러기"]
let 포유류: Set<String> = ["사자", "호랑이", "곰"]
let 동물: Set<String> = 새.union(포유류)     // 새와 포유류의 합집합

print(새.isDisjoint(with: 포유류))     // 서로 배타적인지 - true
print(새.isSubset(of: 동물))          // 새가 동물의 부분집합인가? - true
print(동물.isSuperset(of: 포유류))     // 동물은 포유류의 전체집합인가? - true
print(동물.isSuperset(of: 새))        // 동물은 새의 전체집합인가? - true
```
