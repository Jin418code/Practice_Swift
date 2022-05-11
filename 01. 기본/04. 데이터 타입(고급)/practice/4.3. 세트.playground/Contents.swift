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
