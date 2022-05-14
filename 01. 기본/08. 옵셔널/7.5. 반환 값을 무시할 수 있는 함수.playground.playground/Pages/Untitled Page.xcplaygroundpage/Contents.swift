//  오류가 발생하는 nil 할당
var myname: String = "Jin"
myName = nil        // 오류 발생


//  옵셔널 변수의 선언 및 nil 할당
var myName: String? = "Jin"
print(myName)       // 옵셔널 값을 print 함수로 출력하면 Optional("Jin")으로 뜸

myName = nil
print(myName)       // nil


//  switch를 통한 옵셔널 값의 확인 1
func checkOptionalValue(value optionalValue: Any?){
    switch optionalValue {
    case .none:
        print("This Optional variable is nil")
    case .some(let value):
        print("Value is \(value)")
    }
}

var myName: String? = "Jin"
checkOptionalValue(value: myName)   // Value is Jin

myName = nil
checkOptionalValue(value: myName)   // This Optional variable is nil


// switch를 통한 옵셔널 값의 확인 2
let numbers: [Int?] = [2, nil, -4, nil, 100]

for number in numbers {
    switch number {
    case .some(let value) where value < 0:
        print("Negative value!! \(value)")
    case .some(let value) where value > 10:
        print("Large value!! \(value)")
        
    case .some(let value):
        print("value \(value)")
        
    case .none:
        print("nil")
    }
}
// value 2, nil, Negative value!! -4, nil, Large value!! 100
