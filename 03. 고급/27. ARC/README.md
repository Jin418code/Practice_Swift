# ARC(Automatic Refernece Counting)
- 매번 전달할 때마다 값을 복사해 전달하느 값 타입과는 달리 참조타입은 하나의 인스턴스가 참조를 통해 여러곳에서 접근하기 때문에 언저 메모리에서 해제되는지가 중요한 문제이다. 인스턴스가 적절한 시점에 메모리에서 해제되지 않으면 한정적인 메모리 자원을 낭비하게 되며, 이는 성능의 저하로 이어지게 됩니다. 스위프트는 프로그램의 메모리 사용을 관리하기 위하여 메모리 관리 기법인 ARC를 사용한다.
  - ARC
    - ARC가 관리해주는 참조 횟수 계산(Reference Counting)은 참조 타입인 클래스와 인스턴스에만 적용된다. 구조체나 열거형은 값 타입이므로 참조 횟수 계산과는 무관하다.

# 1. ARC란
- ARC 기능은 이름에서 알 수 있듯이 자동으로 메모리를 관리해주는 방식이다. 아무래도 프로그래머가 메모리 관리에 신경을 덜 쓸 수 있기에 편리하다. ARC는 더이상 필요하지 않은 클래스의 인스턴스를 메모리에서 해제하는 방식으로 동작한다.
- 자바 등 다름 프로그래밍 언어에서 사용되는 메모리 관리 기법인 가비지 컬렉션 기법과는 차이가 있다.
  - ARC와 가비지 컬렉션의 가장 큰 차이점은 참조를 계산하는 시점이다. ARC는 인스턴스가 언제 메모리에서 해제되어야 할지를 컴파일에 동시에 결정하지만 가비지 컬렉션은 프로그램 동작 중에 참조 카운팅을 한다.
  - ARC는 작동 규칙을 모르고 사용하면 인스턴스가 메모리에서 영원히 해제되지 않을 가능성이 있다.
  - 가비지 컬렉션은 프로그램 동작 외에 메모리 감시를 위한 추가 자원이 필요하므로 한정적인 자원환경에서는 성능 저하가 발생할 수 있다.
- 가비지 컬렉션과 달리 ARC는 컴파일과 동시에 인스턴스를 메모리에서 해제하는 시점이 결정되기 때문에 우리가 원하는 방향으로 메모리 관리가 이뤄지려면 ARC에 명확한 힌트를 줘야한다.
- 클래스의 인스턴스를 생성할 때마다 ARC는 그 인스턴스에 대한 정보를 저장하기 위한 메모리공간을 따로 또 할당한다. 그 메모리 공간에는 인스턴스의 타입 정보와 함께 그 인스턴스와 관련된 저장 프로퍼티의 값 등을 저장한다. 그 후에 인스턴스가 더 이상 필요없는 상태가 되면 인스턴스가 차지하던 메모리 공간을 다른 용도로 활용할 수 있도록 ARC메모리에서 인스턴스를 없앤다. 
- 하지만 만약 아직 더 사용해야하는 인스턴스를 메모리에서 해제시킨다면 인스턴스와 관련된 프로퍼티에 접근하거나 인스턴스의 메서드를 호출할 수 없게되고 이로 인해 프로그램이 강제 종료될 확률이 높다.

<br/>

------------
# 2. 강한참조(Strong Reference)
- 인스턴스가 계속해서 메모리에 남아있어야 하는 명분을 만들어주는 것이 바로 강한참조이다. 인스턴스는 참조 횟수가 0이 되는 순간 메모리에서 해제되는데, 인스턴스를 다른 인스턴스의 프로퍼티나 변수, 상수 등에 할당할 때 강한참조를 사용하면 참조 횟수가 1 증가한다. 또 강한참조를 사용하는 프로퍼티, 변수, 상수 등에 nil을 할당해주면 원래 자신에게 할당되어 있던 인스턴스의 참조 횟수가 1 감소한다.
- 참조의 기본은 강한참조이므로 클래스 타입의 프로퍼티, 변수, 상수 등을 선언할 때 별도의 식별자를 명시하지 않으면 강한참조를 한다. 이제까지 우리는 알지 못하고 써왔지만 프로퍼티와 변수, 상수를 모두 강한 참조로 선언해주었던 것이다. 

## 2.1. 강한참조 순환문제(Strong Reference Cycle)
- 복합적으로 강한참조가 일어나는 상황에서 강한참조의 규칙을 모르고 사용하게 되면 문제가 발생할 수 있다. 인스턴스끼리 서로가 서로를 강한참조할 때를 대표적인 예로 들 수 있다. 이를 강한참조 순환이라고 한다.

<br/>

------------

# 3. 약한참조(Weak Reference)
- 약한참조는 강한참조와 달리 자신이 참조하는 인스턴스의 참조 횟수를 증가시키지 않는다. 참조 타입의 프로퍼티나 변수의 선언 앞에 weak 키워드를 써주면 그 프로퍼티나 변수는 자신이 참조하는 인스턴스를 약한 참조한다. 약한 참조를 사용한다면 자신이 참조하는 인스턴가 메모리에서 해제될 수도 있다는 것을 예상해볼 수 있어야 한다. 자신이 참조 횟수를 증가시키지 않았기 때문에 그 인스턴스를 강한참조하던 프로퍼티나 변수에서 참조 횟수를 감소시켜 0으로 만들면 자신이 참조하던 인스턴스가 메모리에서 해제되기 때문이다.

<br/>

------------

# 4. 미소유참조(Unowned Reference)
- 참조 횟수를 증가시키지 않고 참고할 수 있는 방법은 약한참조만 있는 것은 아니다. 약한참조와 마찬가지로 미소유 참조는 인스턴스의 참조 횟수를 증가시키지 않는다. 미소유참조는 약한참조와 다르게 자신이 참조하는 인스턴스가 항상 메모리에 존재할 것이라는 전제를 기반으로 동작한다. 즉, 자신이 참조하는 인스턴스가 메모리에서 해제되더라도 스스로 nil을 할당해주지 않는다는 뜻이다. 그렇기 때문에 미소유 참조를 하는 변수나 프로퍼티는 옵셔널이나 변수가 아니어도 된다. 
- 그렇지만 미소유참조를 하면서 메모리에서 해제된 인스턴스에 접근하려 한다면 잘못된 메모리 접근으로 런타임 오류가 발생해 프로세스가 강제로 종료된다. 따라서 미소유참조는 참조하는 동안 해당 인스턴스가 메모리에서 해제되지 않으리라는 확신이 있을 때만 사용해야한다.
- 참조 타입의 변수나 프로퍼티의 정의 앞에 unowned 키워드를 써주면 그 변수(상수)나 프로퍼티는 자신이 참조하는 인스턴스를 미소유참조하게 된다.


<br/>

------------

# 5. 미소유 옵셔널 참조
- 클래스를 참조하는 옵셔널을 미소유로 표시할 수 있다. ARC 소유 모델에 따르면 미소유 옵셔널 참조와 약한참조를 같은 상황에 사용할 수 있다. 차이가 있다면 미소유 옵셔널 참조는 항상 유효한 객체를 가리키거나 그렇지 않으면 nil을 할당해 주도록 직접 신경을 써야한다.


<br/>

------------

# 6. 미소유참조와 암시적 추출 옵셔널 프로퍼티
- 강한참조 순환 문제는 약한참조를 통해 해결할 수 있다. 
- 하지만 서로 참조해야하는 프로퍼티에 값이 꼭 있어야 하면서도 초기화되면 그 이후에는 nil을 할당할 수 없는 조건을 갖추어야한다. 

<br/>

------------

# 7. 클로저의 강한참조 순환
- 강한참조 순환 문제는 두 인스턴스끼리의 참조일 때만 발생하는 것 외에 클로저가 인스턴스의 프로퍼티일 때나, 클로저의 값 획득 특성 때문에 발생한다.
- 강한참조 순환이 발생하는 이유는 클로저가 클래스와 같은 참조 타입이기 때문이다. 클로저를 클래스 인스턴스의 프로퍼티로 할당하면 클로저의 참조가 할당된다. 이때 참조 타입과 참조 타입이 서로 강한 참조를 하기 때문에 강한참조 순환 문제가 발생한다.
- 이러한 클로저의 강한참조 순환 문제는 클로저의 획득 목록을 통해 해결할 수 있다. 그런데 클로저의 획득 목록을 통해 강한참조 순환 문제를 해결하는 방법을 알아보기 전에 강한참조 순환이 어떻게 일어나게 되는지 알아보는 것도 중요하다. 

## 7.1. 획득목록
- 획득목록은 클로저 내부에서 참조 타입을 획득하는 규칙을 제시해줄 수 있는 기능이다. 획득목록을 사용하면 때에 따라서, 혹은 각 관계에 따라서 참조 방식을 클로저에 제안할 수 있다.
- 획득목록은 클로저 내부의 매개변수 목록 이전 위치에 작성해준다. 획득목록은 참조 방식과 참조할 대상을 대괄호로 둘러싼 목록 형식으로 작성하며 획득목록 뒤에는 in 키워드를 써준다. 획득목록에 명시한 요소가 참조 타입이 아니라면 해당 요소들은 클로저가 생성될 때 초기화된다. 
