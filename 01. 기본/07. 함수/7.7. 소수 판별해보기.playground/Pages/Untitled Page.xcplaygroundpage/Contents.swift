func primeNumberCheck(num: Int){
    for i in 2..<num {
        if num % i == 0{
            print("소수가 아닙니다.")
            return
        }
    }
    print("소수입니다.")
}

primeNumberCheck(num: 7)
