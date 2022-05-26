// 1
for i in 1...100 {
    if i % 3 == 0 {
        print("3의 배수 발견 : \(i)")
    }
}


// 2
for i in 1...100 {
    if i % 3 != 0{
        continue
    }
    print("3의 배수 발견 : \(i)")
}
