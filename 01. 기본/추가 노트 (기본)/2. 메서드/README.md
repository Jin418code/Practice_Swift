# 메서드
- 함수가 클래스 안에 있으면 메서드라 불림 

- 메서드 종류로는 
1. 클래스 또는 타입 메서드
2. 인스턴스(instance) 메서드
```swift
class Man{
    var age: Int = 1
    var weight: Double = 3.5
// 위 두 함수는 프로퍼티, 정확히는 저장 프로퍼티(stored property)
    func display(){
        print("나이 = \(age), 몸무게 = \(weight)")
// display는 class(Man)이 사용하는 메서드가 아님
// class안에서 만들어진 인스턴스가 사용하는 메서드(13. 인스턴스에 추가설명)
    }
}
```

## 1. 클래스 메서드(class or type method)

- 클래스 메서드 또는 타입 메서드는 
**클래스 레벨에서 동작**하는 것으로 클래스의 새로운 인스턴스를 생성하는 것과 같음
- 클래스 메서드는 자식 클래스에서 override가 가능함

```swift
ass Man{
    var age: Int = 1
    var weight: Double = 3.5
// 위 두 함수는 프로퍼티, 정확히는 저장 프로퍼티(stored property)
    func display(){
        print("나이 = \(age), 몸무게 = \(weight)")
    }
    class func cM(){
        print("cM은 클래스 메서드입니다.")
// 클래스 메서드, 위의 class와 전혀 다른 것임
    }
    static func scM(){
        print("scM은 클래스 메서드(static)입니다.")
//
    }
}

var kim: Man = Man() // 가능
kim.display() // 가능
kim.cm()
// 안됨. kim은 인스턴스이며 인스턴스는 인스턴스 메서드만 사용가능
// 앞에 아무것도 없는(class, static이 없는) 메서드만 사용가능
Man.cM()
Man.scM()
// 위의 클래스가 직접 사용하는 메서드임
```

## 2. 인스턴스 메서드
- 인스턴스 레벨에서 동작하는 메서드임
```swift
var age: Int = 0
// var 변수명: 자료형 = 초기값 

var 인스턴스명: 클래스명 = 클래스명()
// ()는 눈에 보이지 않는 default initializer를 나타냄
// ': 클래스명'은 생략 가능
```

```swift
class Man{
    var age: Int = 1
    var weight: Double = 3.5
// 위 두 함수는 프로퍼티, 정확히는 저장 프로퍼티(stored property)
    func display(){
        print("나이 = \(age), 몸무게 = \(weight)")
// display는 class(Man)이 사용하는 메서드(클래스 메서드)가 아님
// 인스턴스(밑의 kim)이 사용할 인스턴스 메서드임
    }
}

var kim: Man = Man() // 가능
// 이렇게 사용해야함. 밑의 코드는 오류남
// ()는 눈에 보이지 않는 생성자 default initializer를 나타냄
var kim: Man // 불가능
// Variable 'kim' used before being initialized 오류
✏️ 
var x: Int
// 일반 자료형은 이와같이 선언이 가능하지만 위의 상황은 안됨

kim.display()
// display는 kim이라는 인스턴스가 사용한 인스턴스 메서드

print(kim.age)
// 함수 외부에서 프로퍼티까지 직접 접근이 가능함(이후 설명)
```
