//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    //  TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    
    @IBOutlet weak var NameAgeLabel: UILabel?
    
    @IBOutlet weak var NameField: UITextField?
    
    @IBOutlet weak var AgeField: UITextField?
    
    @IBAction func changeLabel1(sender: AnyObject?) {
        self.NameAgeLabel!.text = String("Hello \(self.NameField!.text!), you are \(self.AgeField!.text!) years old")
        NameField!.resignFirstResponder()
        AgeField!.resignFirstResponder()
    }
    //  TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    @IBOutlet weak var AgeCheckLabel: UILabel?
    
    @IBAction func AgeCheck(sender: AnyObject?) {
        if (Int(AgeField!.text!) > 21){
            self.AgeCheckLabel!.text = String("You can drink")
        } else if (Int(AgeField!.text!) > 18){
            self.AgeCheckLabel!.text = String("You can vote")
        } else if (Int(AgeField!.text!) > 16){
            self.AgeCheckLabel!.text = String("You can drive")
        }
    }
    
    
    //  TODO four: Hook up the button to a NEW function (in addition to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    
    @IBAction func AgeCheck2(sender: AnyObject?) {
        if (Int(AgeField!.text!) > 21) {
            self.AgeCheckLabel!.text = String("You can drive, vote and drink (but not at the same time)")
        } else if (Int(AgeField!.text!) > 18 && Int(AgeField!.text!) < 21 ) {
            self.AgeCheckLabel!.text = String("You can drive and vote")
        } else if (Int(AgeField!.text!) > 16 && Int(AgeField!.text!) < 18) {
            self.AgeCheckLabel!.text = String("You can drive")
        }

}

    //  TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!’
    @IBOutlet weak var myLabel2: UILabel?

    @IBAction func changeLabel2(sender: AnyObject?) {
        self.myLabel2!.text = String("Hello world")
    }

}
