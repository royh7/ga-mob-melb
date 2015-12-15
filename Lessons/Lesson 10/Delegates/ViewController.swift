//
//  ViewController.swift
//  Delegates
//
//  Created by Antonio de Perio on 10/12/2015.
//  Copyright © 2015 Workshop. All rights reserved.
//

import UIKit


protocol ViewControllerDelegate {
    
    func addItem(newItem: Todo)
}

class ViewController: UIViewController {
    
    var delegate: ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func addToDo(sender: AnyObject) {
        
        let newTodo = Todo(name: "My First Todo", desc: "My Todo Descripton")
        
        if(delegate != nil){
            self.delegate!.addItem(newTodo)
        }

        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}

