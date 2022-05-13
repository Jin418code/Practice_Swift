var names: [String] = ["John", "Jenny", "Joe", "Jin"]

repeat {
    print("Good bye \(names.removeFirst())")
    // removeFirst()는 요소를 삭제함과 동시에 삭제한 요소를 반환
} while names.isEmpty == false
            
// Good bye John //Good bye Jenny //Good bye Joe //Good bye Jin
