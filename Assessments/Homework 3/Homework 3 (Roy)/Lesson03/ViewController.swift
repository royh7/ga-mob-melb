//
//  ViewController.swift
//  Lesson03
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var displayTableViewButton: UIButton!
    @IBAction func swipeRightToOpenModal(sender: AnyObject?) {
        presentViewController(ModalDialogViewController(), animated: true, completion: nil)
    }
    /*
    
    TODO four: Hook up the button on the home screen to push ArrayTableViewController into view (via the navigation controller) when tapped. Do this by triggering a segue from this view controller. The method you are looking for is performSegueWithIdentifier. Find the identifier from the storyboard.
    */
    override func performSegueWithIdentifier(identifier: String?, sender: AnyObject?) {
        
        if (identifier == nil) {
            return
        }
        
        if (identifier == "show") {
            let VC: Void? = self.navigationController?.presentViewController(TableViewController(), animated: true, completion: nil)
        }
    }
}

    