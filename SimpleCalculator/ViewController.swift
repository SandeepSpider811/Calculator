//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Sierra 4 on 30/01/17.
//  Copyright © 2017 Sierra 4. All rights reserved.


import UIKit

class ViewController: UIViewController {

    var firstValue = ""
    var secondValue = ""
    var operation = ""
    var displayString = ""
    
    @IBOutlet weak var lblOutput: UILabel!
    
    @IBOutlet weak var lblInput: UILabel!
    
    @IBOutlet weak var btnSevenOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnSeven(_ sender: Any) {
        if operation == "" {
            firstValue = firstValue+"7"
            displayString = displayString+"7"
        } else {
            secondValue = secondValue+"7"
            displayString = displayString+"7"
        }
        lblInput.text = displayString
    }
    
    @IBAction func btnEight(_ sender: Any) {
        if operation == "" {
            firstValue = firstValue+"8"
            displayString = displayString+"8"
        }else {
            secondValue = secondValue+"8"
            displayString = displayString+"8"
        }
        lblInput.text = displayString
    }
    
    @IBAction func btnNine(_ sender: Any) {
        if operation == "" {
            firstValue = firstValue+"9"
            displayString = displayString+"9"
        }else {
            secondValue = secondValue+"9"
            displayString = displayString+"9"
        }
        lblInput.text = displayString
    }
    
    @IBAction func btnFour(_ sender: Any) {
        if operation == "" {
            firstValue = firstValue+"4"
            displayString = displayString+"4"
        }else {
            secondValue = secondValue+"4"
            displayString = displayString+"4"
        }
        lblInput.text = displayString
    }
    
    @IBAction func btnFive(_ sender: Any) {
        if operation == "" {
            firstValue = firstValue+"5"
            displayString = displayString+"5"
        }else {
            secondValue = secondValue+"5"
            displayString = displayString+"5"
        }
        lblInput.text = displayString
    }
    
    @IBAction func btnSix(_ sender: Any) {
        if operation == "" {
            firstValue = firstValue+"6"
            displayString = displayString+"6"
        }else {
            secondValue = secondValue+"6"
            displayString = displayString+"6"
        }
        lblInput.text = displayString    }
    
    @IBAction func btnOne(_ sender: Any) {
        if operation == "" {
            firstValue = firstValue+"1"
            displayString = displayString+"1"
        }else {
            secondValue = secondValue+"1"
            displayString = displayString+"1"
        }
        lblInput.text = displayString
    }
    
    @IBAction func btnTwo(_ sender: Any) {
        if operation == "" {
            firstValue = firstValue+"2"
            displayString = displayString+"2"
        }else {
            secondValue = secondValue+"2"
            displayString = displayString+"2"
        }
        lblInput.text = displayString
    }
  
    @IBAction func btnThree(_ sender: Any) {
        if operation == "" {
            firstValue = firstValue+"3"
            displayString = displayString+"3"
        }else {
            secondValue = secondValue+"3"
            displayString = displayString+"3"
        }
        lblInput.text = displayString
    }
    
    @IBAction func btnZero(_ sender: Any) {
        if operation == "" {
            firstValue = firstValue+"0"
            displayString = displayString+"0"
        }else {
            secondValue = secondValue+"0"
            displayString = displayString+"0"
        }
        lblInput.text = displayString
    }
    
    @IBAction func btnDot(_ sender: Any) {
        if operation == "" {
            firstValue = firstValue+"."
            displayString = displayString+"."
        }else {
            secondValue = secondValue+"."
            displayString = displayString+"."
        }
        lblInput.text = displayString
    }
    
    @IBAction func btnDivide(_ sender: Any) {
        operation = "/"
        if firstValue != "" {
            displayString = displayString+"/"
        } else {
            lblOutput.text = "Enter values first"
            firstValue = ""
            secondValue = ""
            displayString = ""
            operation = ""
        }
        lblInput.text = displayString
    }
    
    @IBAction func btnMultiply(_ sender: Any) {
        operation = "*"
        if firstValue != "" {
            displayString = displayString+"*"
        } else {
            lblOutput.text = "Enter values first"
            firstValue = ""
            secondValue = ""
            displayString = ""
            operation = ""
        }
        lblInput.text = displayString
    }
    
    @IBAction func btnMinus(_ sender: Any) {
        operation = "-"
        if firstValue != "" {
            displayString = displayString+"-"
        } else {
            lblOutput.text = "Enter values first"
            firstValue = ""
            secondValue = ""
            displayString = ""
            operation = ""
        }
        lblInput.text = displayString
    }
    
    @IBAction func btnPlus(_ sender: Any) {
        operation = "+"
        if firstValue != "" {
            displayString = displayString+"+"
        } else {
            lblOutput.text = "Enter values first"
            firstValue = ""
            secondValue = ""
            displayString = ""
            operation = ""
        }
        lblInput.text = displayString
    }
   
    @IBAction func btnEqualTo(_ sender: Any) {
        if operation == "" || firstValue == "" || secondValue == "" {
            lblOutput.text = "Please enter correct values"
            displayString = ""
            lblInput.text = ""
        } else {
            let result = calculate()
            lblOutput.text = "= \(result)"
        }
    }
    
    @IBAction func btnCancel(_ sender: Any) {
        lblInput.text = ""
        lblOutput.text = ""
        displayString = ""
        firstValue = ""
        secondValue = ""
        operation = ""
    }
    
    func calculate() -> Double {
        let firstNumber = Double(firstValue)!
        let secondNumber = Double(secondValue)!
        if displayString.ha
        firstValue = ""
        secondValue = ""
        displayString = ""
        switch operation {
        case "+":
            operation = ""
            return firstNumber + secondNumber
        case "-":
            operation = ""
            return firstNumber - secondNumber
        case "*":
            operation = ""
            return firstNumber * secondNumber
        case "/":
            operation = ""
            return firstNumber / secondNumber
        default:
            return 0
        }
    }
}

