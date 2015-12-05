//
//  ThirdViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
//  TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.

    @IBOutlet weak var InputNumber: UITextField?
    
    @IBOutlet weak var OddOrEvenNumber: UILabel?
    
    @IBOutlet weak var CalculateButton: UIButton?
    
    @IBAction func OddOrEven (sender: AnyObject?) {
        let test = InputNumber!.text
        if (test != nil) {
            if (Int(InputNumber!.text!)! % 2 == 0)
            {
                self.OddOrEvenNumber!.text = String("The number is even")
            }
            else
            {
                self.OddOrEvenNumber!.text = String("The number is not even")
            }
        }
    
}
}