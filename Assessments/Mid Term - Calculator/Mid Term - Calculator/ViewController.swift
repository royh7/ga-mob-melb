//
//  ViewController.swift
//  Mid Term - Calculator
//
//  Created by Roy Ho on 1/7/16.
//  Copyright © 2016 Roy Ho. All rights reserved.
//

import UIKit

func addition(a: Double, b: Double) -> Double {
    let result = a + b
    return result
}
func subtract(a: Double, b: Double) -> Double {
    let result = a - b
    return result
}
func multiply(a: Double, b: Double) -> Double {
    let result = a * b
    return result
}
func divide(a: Double, b: Double) -> Double {
    let result = a / b
    return result
}


typealias binaryOperators = (Double, Double) -> Double //assigning name to the existing type
let operators: [String: binaryOperators] = [ "+" : addition, "-" : subtract, "*" : multiply, "/" : divide ] //dictionary..makes referencing and calling the functions easier

class ViewController: UIViewController {
    
    var currentTotalAsDouble: Double = 0.0
    var userInput = ""
    var numStack: [Double] = [] // Number stack
    var opStack: [String] = [] // Operator stack
    
    
    //when number buttons are pressed, handles negative numbers
    func manageInput(numberInput: String) {
        if userInput.hasPrefix("-") { //if negative number, user input equals the number after the prefix
            userInput = userInput.substringFromIndex(userInput.startIndex.successor())
        } else { //if no previous/positive input, number input will equal user input
            userInput += numberInput
        }
        currentTotalAsDouble = Double((userInput as NSString).doubleValue)
    }
    
    //when number/operators buttons are pressed, handles decimals and displays accordingly
    func displayIntegerOrDecimal() {
        // does not display decimal if integer
        if currentTotalAsDouble.isInfinite == true {
            numField.text = "ERROR"
        } else {
            let currentTotalAsInteger = Int(currentTotalAsDouble)
            if currentTotalAsDouble - Double(currentTotalAsInteger) == 0 {
                numField.text = "\(currentTotalAsInteger)"
            } else {
                numField.text = "\(currentTotalAsDouble)"
            }
        }
    }
    
    //when operator is pressed, update stack
    func operatorClicked(pressedOperator: String) {
        opStack.append(pressedOperator)
        numStack.append(currentTotalAsDouble)
        userInput = ""
       
    }
    
    //when equals is pressed
    func equals() {
        if numStack.isEmpty == false {
            let currentOperator = operators[opStack.removeLast()]
            currentTotalAsDouble = currentOperator!(numStack.removeLast(), currentTotalAsDouble)
        }
        displayIntegerOrDecimal()
        userInput = ""
    }
    // Looks for decimal point in string
    func hasDecimal(stringToSearch str: String, characterToFind chr: String) -> Bool {
        if str.containsString(chr){
            return true
        } else {
            return false
        }
    }
    
    //operators
    @IBOutlet var numField: UITextField!
    @IBOutlet var buttonClear: UIButton!
    @IBOutlet var buttonEquals: UIButton!
    @IBOutlet var buttonAdd: UIButton!
    @IBOutlet var buttonSubtract: UIButton!
    @IBOutlet var buttonMultiply: UIButton!
    @IBOutlet var buttonDivide: UIButton!
    @IBOutlet var buttonDecimal: UIButton!
    @IBOutlet var buttonPercentage: UIButton!
    @IBOutlet var buttonPlusMinus: UIButton!
    
    //numbers
    @IBOutlet var button0: UIButton!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    
    //actions
    @IBAction func button0Press(sender: UIButton) {
        manageInput("0")
        displayIntegerOrDecimal()
    }
    @IBAction func button1Press(sender: UIButton) {
        manageInput("1")
        displayIntegerOrDecimal()
    }
    @IBAction func button2Press(sender: UIButton) {
        manageInput("2")
        displayIntegerOrDecimal()
    }
    @IBAction func button3Press(sender: UIButton) {
        manageInput("3")
        displayIntegerOrDecimal()
    }
    @IBAction func button4Press(sender: UIButton) {
        manageInput("4")
        displayIntegerOrDecimal()
    }
    @IBAction func button5Press(sender: UIButton) {
        manageInput("5")
        displayIntegerOrDecimal()
    }
    @IBAction func button6Press(sender: UIButton) {
        manageInput("6")
        displayIntegerOrDecimal()
    }
    @IBAction func button7Press(sender: UIButton) {
        manageInput("7")
        displayIntegerOrDecimal()
    }
    @IBAction func button8Press(sender: UIButton) {
        manageInput("8")
        displayIntegerOrDecimal()
    }
    @IBAction func button9Press(sender: UIButton) {
        manageInput("9")
        displayIntegerOrDecimal()
    }
    @IBAction func buttonPlusMinusPress(sender: UIButton) {
        if currentTotalAsDouble > 0 { 5
            currentTotalAsDouble = currentTotalAsDouble - currentTotalAsDouble * 2
        } else {
            currentTotalAsDouble = currentTotalAsDouble - currentTotalAsDouble * 2
        }
        
        displayIntegerOrDecimal()
    }
    @IBAction func buttonCPress(sender: UIButton) {
        userInput = ""
        currentTotalAsDouble = 0
        numField.text = "0"
        numStack.removeAll()
        opStack.removeAll()
    }
    @IBAction func buttonPercentagePress(sender: UIButton) {
        currentTotalAsDouble = currentTotalAsDouble/100
        
        displayIntegerOrDecimal()
    }
    @IBAction func buttonDecimalPress(sender: UIButton) {
        if hasDecimal(stringToSearch: userInput, characterToFind: ".") == false {
            manageInput(".")
        }
        displayIntegerOrDecimal()
    }
    @IBAction func buttonPlusPress(sender: UIButton) {
        operatorClicked("+")
        displayIntegerOrDecimal()
    }
    @IBAction func buttonMinusPress(sender: UIButton) {
        operatorClicked("-")
        displayIntegerOrDecimal()
    }
    @IBAction func buttonMultiplyPress(sender: UIButton) {
        operatorClicked("*")
        displayIntegerOrDecimal()
    }
    @IBAction func buttonDividePress(sender: UIButton) {
        operatorClicked("/")
        displayIntegerOrDecimal()
    }
    @IBAction func buttonEqualsPress(sender: UIButton) {
        equals()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

