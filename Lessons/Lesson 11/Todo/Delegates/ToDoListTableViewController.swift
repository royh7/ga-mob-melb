//
//  ToDoListTableViewController.swift
//  Delegates
//
//  Created by Antonio de Perio on 10/12/2015.
//  Copyright © 2015 Workshop. All rights reserved.
//

import UIKit


class ToDoListTableViewController: UITableViewController {

    var myTodoItems : [Todo] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let todo1 = Todo(name: "Build app", desc: "My Description")
        let todo2 = Todo(name: "Get Groceries", desc: "My Description")
        let todo3 = Todo(name: "Finish Tax", desc: "My Description")
        let todo4 = Todo(name: "Start business idea", desc: "My Description")
        
        
        myTodoItems = [todo1, todo2, todo3, todo4]
        
        self.tableView.reloadData()
        
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myTodoItems.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

         //Configure the cell...
        cell.textLabel!.text = self.myTodoItems[indexPath.row].taskName
        cell.detailTextLabel!.text = self.myTodoItems[indexPath.row].taskDescription

        return cell
    }


    
    @IBAction func addToDo(sender: AnyObject) {
        
        let addVC = self.storyboard?.instantiateViewControllerWithIdentifier("addVC")
        self.presentViewController(addVC!, animated: true, completion: nil)
        
    }

}
