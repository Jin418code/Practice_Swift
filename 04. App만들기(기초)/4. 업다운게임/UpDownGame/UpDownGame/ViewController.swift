//
//  ViewController.swift
//  UpDownGame
//
//  Created by JinHan Choi on 2022/06/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    // label들은 문자열로 만들어져있음
    
    var comNumber = Int.random(in: 1...10)
    // 컴퓨터가 랜덤으로 선택하게 하는 변수 생성(컴퓨터가 선택한 수를 저장하기위해)
    
    var myNumber: Int = 1
    // 내가 선택한 숫자를 저장하는 변수(buttonTapped의 3))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1) 메인레이블에 "선택하세요"
        mainLabel.text = "선택하세요"
        
        // 2) 숫자레이블은 ""(비어있어야함)
        numberLabel.text = ""
    
    }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        // 1) 버튼의 숫자를 가져와야함
        guard let numString = sender.currentTitle else { return }
        
        // 2) 숫자레이블이 숫자에 따라 변하도록
        numberLabel.text = numString
        
        // 3) 선택한 숫자를 변수에다가 저장 (선택사항)
        guard let num = Int(numString) else { return }
        // numString은 String타입 그렇기 때문에 옵셔널 타입으로 나옴(Int에 안담길수도 있기때문)
        // 문자열을 숫자로 변환(숫자를 비교하기 위해)
        myNumber = num
        
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        
        // 1) 컴퓨터의 숫자와 내가 선택한 숫자를 비교해서 up인지 down인지 bingo인지(메인레이블)
        if comNumber > myNumber {
            mainLabel.text = "Up"
        } else if comNumber < myNumber {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo!🤩"
        }
        /*
         다른 방법 제시(변수 myNumber)안 만든다면
         숫자레이블에 있는 문자열 가져와 옵셔널 벗기기
         guard let myNumString = numberLabel.text elst { return }
         
         문자열을 정수로 타입 변환
         guard let myNumber = Int(myNumString) else { return }
         */
        
        
    }
    

    @IBAction func resetButtonTapped(_ sender: UIButton) {
        
        // 1) 메인레이블 "선택하세요"
        mainLabel.text = "선택하세요"
        
        // 2) 컴퓨터의 랜덤숫자를 다시 선택하게
        comNumber = Int.random(in: 1...10)
        
        // 3) 숫자레이블 ""(빈문자열, 초기화면처럼)
        numberLabel.text = ""
    }
    
    
    
    
    
    
    
}

