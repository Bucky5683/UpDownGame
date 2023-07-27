//
//  ViewController.swift
//  UpDownGame
//
//  Created by 김서연 on 2023/07/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    //컴퓨터가 랜덤으로 숫자를 선택
    var computerchoice : Int = Int.random(in: 1...10)
    var mychoice : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        resultLabel.text = "선택하세요"
        myChoiceLabel.text = ""
    }

    @IBAction func numberButtonTap(_ sender: UIButton) {
        // 버튼 숫자 가져오기
        guard let numString = sender.currentTitle else { return }
        
        // myChoiceLabel의 text가 숫자에 따라 변하도록
        myChoiceLabel.text = numString
        
        // 선택한 숫자를 변수에다가 저장
        guard let num = Int(numString) else { return }
        mychoice = num
        
    }
    
    @IBAction func resetButtonTap(_ sender: UIButton) {
        
        resultLabel.text = "선택하세요"
        myChoiceLabel.text = ""
        computerchoice = Int.random(in: 1...10)
        
    }
    @IBAction func selectButtonTap(_ sender: UIButton) {
        //컴퓨터의 숫자와 내가 선택한 숫자를 비교해서 UP/DOWN/Binggo
        if computerchoice > mychoice {
            resultLabel.text = "UP ⬆️"
        } else if computerchoice < mychoice{
            resultLabel.text = "DOWN ⬇️"
        } else {
            resultLabel.text = "BINGO 😄"
        }
    }
}

