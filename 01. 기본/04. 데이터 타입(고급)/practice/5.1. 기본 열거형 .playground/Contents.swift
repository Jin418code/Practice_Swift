enum School {
    case primary
    case elementary
    case middle
    case high
    case college
    case university
}

// 각 항목은 그 자체가 고유의 값이며, 한 줄에 모두 표현 가능하다.

enum School {
    case primary, elementary, middle, high, college, university
}

// 열거형 변수의 생성 및 값 변경
var highestEducationLevel: School = School.university

// 위 코드와 같은 표현
var highestEducationLevel: school = .university

// 같은 타임인 School 내부의 항복으로만 highestEducationLevel의 값을 변경 가능함
highestEducationLevel = .graduate
