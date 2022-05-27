func say(_ something: String) -> String {
    print(something)
    return something
}

@discardableResult func discardableResultSay(_ something: String) -> String {
    print(something)
    return(something)
}

say("hello")
// 반환 값을 사용하지 않았으므로 컴파일러가 경고를 표시할 수 있으나
// @discardableResult 메서드를 사용해 경고 알림을 막음
