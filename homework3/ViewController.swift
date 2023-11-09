//
//  ViewController.swift
//  homework3
//
//  Created by Наталья Владимировна Пофтальная on 09.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumberTextfield: UITextField!
    @IBOutlet weak var secondNumberTextfield: UITextField!
    @IBOutlet weak var operationTextfield: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateButton(_ sender: Any) {
        if let firstNumberText = firstNumberTextfield.text, let firstNumber = Int(firstNumberText) {
            if let secondNumberText = secondNumberTextfield.text, let secondNumber = Int(secondNumberText) {
                switch operationTextfield.text {
                case "+" :
                    resultLabel.text = String(firstNumber + secondNumber)
                case "-" :
                    resultLabel.text = String(firstNumber - secondNumber)
                case "*" :
                    resultLabel.text = String(firstNumber * secondNumber)
                case "/" :
                    resultLabel.text = String(Double(firstNumber) / Double(secondNumber))
                default :
                    resultLabel.text = "Некорректные данные"
                }
                
            } else {
                resultLabel.text = "Некорректные данные"
            }
            
        } else {
            resultLabel.text = "Некорректные данные"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

