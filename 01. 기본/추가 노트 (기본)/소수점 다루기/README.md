# Swift에서의 소수점
함수를 구성하다보면 소수점 자리까지 계산하는 경우가 있다.

> 아래 함수를 사용하기 위해서는 Foundation을 import 해줘야한다
**'import Foundation'**

- round()
   - 소수점 이하를 반올림한다.
   - 원하는 소수점 자리까지 반올림해서 나타내고 싶을때
   - 소수점 자릿수에 대한 지정이 없는 경우 소수점 첫번째자리고 판단한다.
   ```swift
   round(2.15)   // 2
   round(2.75)   // 3
   round(-2.15)  // -2
   round(-2.75)  // -3
   ```

- ceil()
   - 소수점 이하를 모두 버리고 +1을 한다.
   ```swift
   import Foundation

   ceil(1.1) // 2
   ceil(2.2) // 3
   ceil(3.6) // 4
   ceil(4.9) // 5
   ```

- floor()
   - 소수점 이하를 모두 버린다.
   ```swift
   import Foundation
   
   floor(1.1) // 2
   floor(2.2) // 3
   floor(3.6) // 4
   floor(4.9) // 5
   ```


  ✏️ 원하는 소수점자리까지 수로 만들기


```swift
String(format: "%.3f", 38.99535) // 38.995
// ""%.3f"의 수 변경으로 지정한 소수점자리까지 출력
```

```swift
let ABC: Double = 5.2246756
print(round(ABC*100)/100)
// 3자리(*1000)/1000)), 4자리(*10000)/10000)) 등
```

