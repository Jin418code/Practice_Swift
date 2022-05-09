let num = 7
num = 3 // 에러:Cannot assign to value: 'num' is a 'let' constant, 상수는 변경 불가

let name: String = "Jin"
var age: Int = 100
var job = "Future iOS Developer" // 타입 추론
var height = 179
age = 28                         // 변수는 변경 가능
job = "Doctor"                   // 값을 변경할 때는 기존과 같은 타입의 값을 할당해야함

print("저의 이름은 \(name)이고, 나이는 \(age)세이며, 직업은\(job)입니다. 제 키는 \(height)cm입니다")
