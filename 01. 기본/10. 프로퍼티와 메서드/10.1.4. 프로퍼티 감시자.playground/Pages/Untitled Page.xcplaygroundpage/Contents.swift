//class Account {
//    var credit: Int = 0 {
//        willSet {
//            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
//        }
//        didSet {
//            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
//        }
//    }
//}
//let myAccount: Account = Account()
//myAccount.credit = 1000

//상속받은 연산 프로퍼티의 프로퍼티 감시자 구현

//class Account {
//    var credit: Int = 0 {
//        willSet {
//            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
//        }
//        didSet {
//            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
//        }
//    }
//    var dollarValue: Double {
//        get {
//            return Double(credit) / 1000.0
//        }
//        set {
//            credit = Int(newValue * 1000)
//            print("잔액을 \(newValue)달러로 변경 중입니다.")
//        }
//    }
//}
//
//class ForeignAccount: Account {
//    override var dollarValue: Double {
//        willSet {
//            print("잔액이 \(dollarValue)달러에서 \(newValue)달러로 변결될 예정입니다.")
//        }
//        didSet {
//            print("잔액이 \(oldValue)달러에서 \(dollarValue)달러로 변경되었습니다.")
//        }
//    }
//}
//
//
//let myAccount: ForeignAccount = ForeignAccount()
//// 잔액이 0원에서 1000원으로 변경될 예정입니다.
//myAccount.credit = 1000
//// 잔액이 0원에서 1000원으로 변경되었습니다.
//
//// 잔액이 1.0달러에서 2.0달러로 변결될 예정입니다.
//// 잔액이 1000원에서 2000원으로 변경될 예정입니다.
//// 잔액이 1000원에서 2000원으로 변경되었습니다.
//
//myAccount.dollarValue = 2
//// 잔액을 2.0달러로 변경 중입니다.
//// 잔액이 1.0달러에서 2.0달러로 변경되었습니다.


// 타입 프로퍼티
class AClass {
    // 저장 타입 프로퍼티
    static var typeProperty: Int = 0

    // 저장 인스턴스 프로퍼티
    var instanceProperty: Int = 0 {
        didSet {
            Self.typeProperty = instanceProperty + 100
    }
}

    // 연산 타입 프로퍼티
    static var typeComputedProperty: Int {
        get {
            return typeProperty
        }
        set {
        typeProperty = newValue
        }
    }
}

AClass.typeProperty = 123

let classInstance: AClass = AClass()
classInstance.instanceProperty = 100

print(AClass.typeProperty)
print(AClass.typeComputedProperty)
