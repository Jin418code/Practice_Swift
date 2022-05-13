var numbers: [Int] = [3, 2343, 6, 3252]

numbersloop: for num in numbers {
    if num > 5 || num < 1 {
        continue numbersloop
}
    
    var count: Int = 0
    
    printLoop: while true {
        print(num)
        count += 1
    
        if count == num {
            break printLoop
        }
  }

        removeLoop: while true {
            if numbers.first != num {
                break numbersloop
            }
        numbers.removeFirst()
        }
}
