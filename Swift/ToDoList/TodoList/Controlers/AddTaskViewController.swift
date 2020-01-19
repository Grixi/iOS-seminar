//
//  AddTaskViewController.swift
//  TodoList
//
//  Created by Adam Tretera on 03/12/2019.
//  Copyright © 2019 Adam Tretera. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskName.layer.cornerRadius = 15.0
        taskDescription.layer.cornerRadius = 15.0
        
    }
    var taskTable:UITableView!
    
var colorBox: String = ""
  @IBAction func CheckButton(_ sender: UIButton) {
     if sender.isSelected{
           sender.isSelected = false
           
       }
       else{
             sender.isSelected = true
         }
       if sender.tag == 1{
           colorBox = "green"
       }
     
       else if sender.tag == 2{
           colorBox = "orange"
       }
       else if sender.tag == 3{
          colorBox = "red"
       }
       else{
           colorBox = "none"
       }

            }

    
    @IBOutlet weak var taskName: UITextField!
    
    
    @IBOutlet weak var taskDescription: UITextField!

    @IBAction func saveTask() {
        TaskManager.instance.addTask(taskName: taskName.text ?? "Task",taskDescription: taskDescription.text ?? "Desc", colorBox: colorBox)
        
        
        taskTable.reloadData()
        
        self.dismiss(animated: true, completion: nil)}

}







enum Colors{
    case red, ornage, green
}
