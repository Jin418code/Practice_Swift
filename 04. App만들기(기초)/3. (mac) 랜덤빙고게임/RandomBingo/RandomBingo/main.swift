//
//  main.swift
//  RandomBingo
//
//  Created by JinHan Choi on 2022/06/01.
//

import Foundation


var computerChoice = Int.random(in: 1...100)
var myChoice: Int = 0


while true {
    
    var userInput = readLine()
    
    if let input = userInput {
        if let number = Int(input) {
            myChoice = number
        }
    }
    if computerChoice > myChoice {
        print("Up")
    } else if computerChoice < myChoice {
        print("Down")
    } else {
        print("Bingo")
        break
    }
}

// readLine()은 디버깅창에 입력한 값을 옵셔널 String으로 받아오기 때문에 if let 바인딩을 해야함
// input의 값이 String에서 Int로 변환이 안될 수 있기 때문에 옵셔널임 그래서 if let 바인딩 해야함

