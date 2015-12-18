//
//  ToDoListTableViewController.swift
//  Delegates
//
//  Created by Antonio de Perio on 10/12/2015.
//  Copyright © 2015 Workshop. All rights reserved.
//

import UIKit


class ToDoListTableViewController: UITableViewController, AddViewControllerDelegate {

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
    
    
    //: - Delegate Methods
    
    func addItem(newItem: Todo) {
        
        self.myTodoItems.append(newItem)
        self.tableView.reloadData()
    }

    
    @IBAction func addToDo(sender: AnyObject) {
        
        let addVC = self.storyboard?.instantiateViewControllerWithIdentifier("addVC")
        if let addVC = addVC as? AddViewController {
            addVC.delegate = self
        }
        self.presentViewController(addVC!, animated: true, completion: nil)
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
