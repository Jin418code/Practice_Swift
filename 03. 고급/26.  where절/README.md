# where절
- 스위프트의 where 절은 특정 패턴과 결합하여 조건을 추가하는 역할을 한다. 조건을 더 추가하고 싶을 때, 특정 타입에 제한을 두고 싶을 때 등등 다양한 용도로 사용된다. 

# 1. where절의 활용
1. 패턴과 결합하여 조건 추가
2. 타입에 대한 제약 추가
- 특정 패턴에 Bool 타입 조건을 지정하거나 어떤 타입의 특정 프로토콜 준수 조건을 추가하는 등의 기능이 있다. 
- where 절은 다른 패턴과 조합하면 원하는 추가 요구사항을 자유롭게 더할 수 있으며, 익스텐션과 제네릭에 사용함으로써 프로토콜 또는 타입에 대한 제약을 추가해줄 수도 있다.
- 조건 구문이나 논리 연산으로 구현한 코드보다는 훨씬 명확하고 간편하게 사용할 수 있다.
