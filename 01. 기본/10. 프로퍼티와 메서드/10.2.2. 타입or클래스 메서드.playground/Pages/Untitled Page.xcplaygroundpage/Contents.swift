class AClass {
    static func staticTypeMethod() {
        print("AClass staticTypeMethod")
    }
    
    class func classTypeMethod() {
        print("AClass classTypeMethod")
    }
}

class BClass: AClass {
    override class func classTypeMethod() {
        print("BClass classTypeMethod")
    }
// override static func staticTypeMethod(){ }
// 재정의 불가한 static, 오류 발생!
}


AClass.staticTypeMethod()
// AClass staticTypeMethod
AClass.classTypeMethod()
// AClass classTypeMethod
BClass.classTypeMethod()
// BClass classTypeMethod
