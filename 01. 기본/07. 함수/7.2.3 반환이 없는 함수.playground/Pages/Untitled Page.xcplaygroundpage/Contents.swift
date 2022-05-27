func sayHelloWorld() {
    print("Hello, world!")
}
sayHelloWorld()    // Hello, world!

func sayHello(from myName: String, to name: String) {
    print("Hello \(name)! I'm \(myName)")
}
sayHello(from: "Jin", to: "Mijeong")    // Hello Mijeong! I am Jin

func sayGoodbye() -> Void {  // Void를 명시해주어도 상관없음
    print("Good bye")
}
sayGoodbye()   // Good bye
