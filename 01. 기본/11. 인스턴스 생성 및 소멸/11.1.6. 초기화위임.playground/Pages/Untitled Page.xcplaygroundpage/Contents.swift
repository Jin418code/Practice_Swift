enum Student {
    case elementary, middle, high
    case none
    
    init() {
        self = Student.none
    }
    
    init(koreanAge: Int) {
        switch koreanAge {
        case 8...13:
            self = Student.elementary
        case 14...16:
            self = Student.middle
        case 17...19:
            self = .high
        default:
            self = .none
        }
    }
    
    init(bornAt: Int, currentYear: Int) {
        self.init(koreanAge: currentYear - bornAt + 1)
    // 이 self.init은 위에 init(koreanAge: Int)를 호출하는 것임
    }
}


var younger: Student = Student(koreanAge: 16)
print(younger)
// middle

younger = Student(bornAt: 1998, currentYear: 2016)
print(younger)
// high

younger = Student(koreanAge: 25)
print(younger)
// none
