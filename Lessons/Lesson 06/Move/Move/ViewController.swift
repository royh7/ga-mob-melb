//
//  ViewController.swift
//  Move
//
//  Created by Antonio de Perio on 26/11/2015.
//  Copyright © 2015 Workshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstView : UIButton?
    @IBOutlet weak var secondView : UIView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tappedHitMe(sender: AnyObject?){
    
        shiftView(self.firstView!, andSecondView: self.secondView!)
    }
    
    func shiftView(view1: UIView, andSecondView view2: UIView){
        
        view1.frame.origin.x += 2
        view2.frame.origin.y -= 2
    
    }


}

