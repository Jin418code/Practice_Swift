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
