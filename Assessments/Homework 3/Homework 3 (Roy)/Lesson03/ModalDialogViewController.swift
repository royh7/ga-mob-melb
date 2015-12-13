//
//  InstructionModalViewController.swift
//  Lesson03
//
//  Created by Roy Ho on 12/6/15.
//  Copyright © 2015 General Assembly. All rights reserved.
//

import Foundation
import UIKit

class ModalDialogViewController: UIViewController {
    
    let modalImage:UIImage! = UIImage(named: "roypic.jpg")
    let dismissButton = UIButton(type: UIButtonType.Custom) as UIButton
    let modalLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        TODO one: Hook up a swipeable area on the home screen that must present a modal dialog when swiped. You must create the modal dialog and present it in CODE (not the storyboard).
        */
        
        modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        view.backgroundColor = UIColor(red: 0.2, green: 0.5, blue: 1.0, alpha: 1.0)
        
        // TODO two: Add an imageview to the modal dialog presented in TODO two.
        
        if (modalImage != nil) {
            let modalImageView = UIImageView(image: modalImage)
            modalImageView.frame = view.frame
            modalImageView.frame = CGRectMake(90, 100, 233, 233)
            view.addSubview(modalImageView)
        } else {
            print("No image found")
        }
        
        /*
        TODO three: Add and hook up a ‘dismiss’ button below the above mentioned image view that will dismiss the modal dialog. Do this in CODE.
        */
        dismissButton.setTitle("Dismiss", forState: .Normal)
        dismissButton.titleLabel?.font = UIFont(name: "Arial", size: 15)
        dismissButton.titleLabel?.textAlignment = .Center
        dismissButton.frame = CGRectMake(100, 325, 200, 50)
        dismissButton.addTarget(self, action: "modalDidFinish", forControlEvents: .TouchUpInside)
        view.addSubview(dismissButton)
    
    }

    func modalDidFinish() {
        dismissViewControllerAnimated(true, completion: nil)
    
    }


}