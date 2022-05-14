# 흐름 제어
- 특정 조건에서 코드를 실행해야 하는 상황, 실행하지 말아야 하는 상황, 특정 명령어를 반복해서 실행해야 하는 상황도 발생한다. 이럴때 사용하는 것이 조건문과 반복문이다.

<br/>

--------------

## 1. 조건문
- if 구문, switch 구문이 있다.

<br/>

### 1.1. if 구문
- if, else 등의 키워드를 사용하며 스위프트의 if 구문은 조건의 값이 꼭 __Bool 타입__이어야 한다.
   - 정수, 실수 등 0이 아닌 모든 값을 참으로 취급하지 않는다는 말이다.
- else if는 갯수가 상관없이 가능, else는 마지막에 한번만 가능
- 위에서 조건을 충족하면 이어진 구문의 조건에 충족하더라도 실행되지 않고 조건문을 빠져나온다.
- if 키워드에 뒤에 조건수식을 소괄호(())로 감싸주는건 선택사항이다.
```swift
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
```

<br/>

### 1.2. switch 구문
- switch 구문도 소괄호(()) 생략 가능하다.
- break 키워드는 선택 사항이다.
   - case 내부의 코드를 모두 실행하면 break 없이도 switch 구문이 종료된다는 뜻이다. 따라서 break를 쓰지 않고 case를 연속 실행하던 트릭은 더 이상 사용 불가하다. 
   - 스위프트에서 switch 구문의 case를 연속 실행하려면(break되는 것을 무시하려면) __fallthrough__ 키워드를 사용한다. 원하는 만큼 여러번 사용가능하다.
- 매우 한정적인 값(enum, case 등)이 비교 값이 아니면 __default__를 꼭 작성해줘야 한다.
- switch 구문의 조건에 다양한 값이 들어갈 수 있으나 case에 들어갈 비교 값은 입력 값과 데이터 타임이 같아야 한다.
- case에는 범위 연산자를 사용할 수도, where 절을 사용하여 조건을 확장할 수도 있다.
```swift
switch 입력 값 {
  case 비교 값 1:
      실행 구문
  case 비교 값 2:
      실행 구문
      // 이번 case를 마치고 switch 구문을 탈출하지 않는다. 아래 case로 넘어간다.
      fallthrough
  case 비교 값 3, 비교 값 4, 비교 값 5:  // 한 번에 여러 값을 비교할 수 있다.
      실행 구문
      break                // break 키워드를 통한 종료는 선택 사항이다.
  default:                 // 한정된 범위가 명확하지 않다면 default는 필수이다.
      실행 구문
}
```

<br/>

#### if문을 switch문으로 바꿔보기
- if문
```swift
func loveCalculator() {
    let loveScore = Int.random(in: 0...100)

    if loveScore > 80 {
        print("당신은 서로 많이 사랑합니다.")
    } else if loveScore > 40 && loveScore <= 80  {
        print("당신은 썸을 타고 있습니다.")
    } else {
        print("당신은 평생 혼자입니다..")
    }
}
loveCalculator()
```
↓
- switch문
```swift
func loveCalculator() {
    let loveScore = Int.random(in: 0...100)
    
switch loveScore {
    case 81...100:
      print("당신은 서로 많이 사랑합니다.")
    case 41..<81:
      print("당신은 썸을 타고 있습니다.")
    case ...40:
      print("당신은 평생 혼자입니다..")
    default:
      print("다시 실행해주세요")
    }
}
loveCalculator()
```
- 튜플 switch case 구성,와일드카드 식별자를 사용한 튜플 switch case구성, 값 바인딩을 사용한 튜플 switch case 구성, where를 사용하여 switch case 확장, 열거형을 입력 값으로 받는 switch 구문, Menu 열거형의 모든 case 처리하는 switch 구문의 상태, 차후에 Menu 열거형에 추가한 case를 처리하지 않으면 경고를 내어줄 unknown 속성 등 여러가지로 활용 가능하다.

<br/>

------------------

## 2. 반복문
- 배열과 같은 시퀀스, 순서가 있는 데이터는 반복문으로 편하게 처리 할 수 있다.

<br/>

### 2.1. for-in 구문
- for-in 반복 구문은 반복적인 데이터나 시퀀스를 다룰 때 사용한다.
- for '상수' in ( )...( ) 
```swift
for 임시 상수 in 시퀀스 아이템 {
실행코드
}
```

<br/>

### 2.2. while 구문
- 특정 조건(Bool 타입)이 성립하는 한 블록 내부의 코드를 반복해서 실행한다.
- for-in 구문과 마간가지로 continue, break 등의 제어 키워드 사용이 가능하다.

<br/>

### 2.3. repeat-while 구문
- repeat 블록의 코드를 최초 1회 실행 후, while 다음의 조건이 성립하면 블록 내부의 코드를 반복 실행한다.

<br/>

-----------------

## 3. 구문 이름표
- 중첩된 반복문을 사용할 때 지정된 구문을 제어하고자 할 때는 제어 키워드와 구문 이름을 할 때 사용한다.
