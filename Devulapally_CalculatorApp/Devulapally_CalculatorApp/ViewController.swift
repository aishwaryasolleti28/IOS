//
//  ViewController.swift
//  Devulapally_CalculatorApp
//
//  Created by Devulapally,Ramya on 2/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    var op1: Double = 0.0
    var op2: Double = 0.0
    var output: Int  = 0
    var operationVal = ""
    var total: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonC(_ sender: UIButton) {
        if(!output.words.isEmpty){
            resultOutlet.text?.removeLast()
        }
    }
    @IBAction func buttonPlusMinus(_ sender: UIButton) {
        if let currentNumber = Double(resultOutlet.text!) {
                let newNumber = -currentNumber
                resultOutlet.text = String(newNumber)
            }
    }
    @IBAction func buttonNine(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "9"
    }
    @IBAction func buttonEight(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "8"
    }
    @IBAction func buttonSeven(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "7"
    }
    @IBAction func buttonSix(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "6"
    }
    @IBAction func buttonFive(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "5"
    }
    @IBAction func buttonFour(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "4"
    }
    @IBAction func buttonThree(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "3"
    }
    @IBAction func buttonTwo(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "2"
    }
    @IBAction func buttonOne(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "1"
    }
    @IBAction func buttonZero(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "0"
    }
    @IBAction func buttonDot(_ sender: UIButton) {
        resultOutlet.text = resultOutlet.text! + "."
    }
    @IBAction func buttonMod(_ sender: UIButton) {
        operationVal = "%"
        op1 = Double(resultOutlet.text!)!
        removeAll()
    }
    @IBAction func buttonPlus(_ sender: UIButton) {
     operationVal = "+"
        op1 = Double(resultOutlet.text!)!
       removeAll()
        }
    @IBAction func buttonMinus(_ sender: UIButton) {
        operationVal = "-"
           op1 = Double(resultOutlet.text!)!
          removeAll()
       }
    @IBAction func buttonMult(_ sender: UIButton) {
        operationVal = "x"
           op1 = Double(resultOutlet.text!)!
           removeAll()
       }
    @IBAction func buttonDiv(_ sender: UIButton) {
        operationVal = "/"
        op1 = Double(resultOutlet.text!)!
        removeAll()
       }
    
    @IBAction func buttonEqual(_ sender: UIButton) {
        op2 = Double(resultOutlet.text!)!
        switch operationVal {
        case "+":
            output = Int(op1+op2)
            resultOutlet.text = String(Int(exactly: output)!)
        case "-":
            output = Int(op1-op2)
            resultOutlet.text = String(output)
            
        case "%":
            let remainder = op1.truncatingRemainder(dividingBy: op2)
                    resultOutlet.text = String(format: "%.1f", remainder)
        case "x":
            output = Int(op1*op2)
            resultOutlet.text = String(output)
            
        case "/":
            if op2 == 0 {
            resultOutlet.text = "Not a number"
            } else {
                let unroundedResult = op1/op2
                resultOutlet.text = String(format: "%.5f", unroundedResult)
                //resultOutlet.text = String(output)
            }
        default:
            resultOutlet.text = "ERROR"
        }
    }
    
    @IBAction func buttonAC(_ sender: UIButton) {
        removeAll()
    }
    func removeAll(){
        resultOutlet.text = ""
    }
    
}
