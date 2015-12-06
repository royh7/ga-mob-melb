//
//  SecondViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
<<<<<<< HEAD
    // add each added number to a list, +1 to the right in a variable then add that variable int.
    
    @IBOutlet weak var NumberField: UITextField?
    
    @IBOutlet weak var CumulativeNumber: UILabel?
    
    @IBOutlet weak var AddButton: UIButton?
    
    var sum = 0
    var numbers : [Int]? = []
    
    @IBAction func AddNumberToList(sender: AnyObject) {
        let newnumber = Int(NumberField!.text!)
        numbers!.append(newnumber!)
        sum = sum + numbers!.last!
        self.CumulativeNumber!.text = String(sum)
=======
    
    var myArray = [Int]()
    
    @IBAction func add(sender: AnyObject)
    {
        
        let myInt = Int(textField!.text!)
        
        var sum = 0
        var counter = 0
        myArray.append(myInt!)
        
        while counter < myArray.count {
            let newValue = myArray[counter]
            sum += newValue
            counter++
        }
        self.resultLabel!.text = String(sum)
        //myArray.append(newValue)
>>>>>>> d09d5372a5cb660c966041608cddee0633af35e4
    }
}
