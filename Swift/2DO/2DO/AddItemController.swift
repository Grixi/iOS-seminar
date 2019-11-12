//
//  AddItemController.swift
//  2DO
//
//  Created by Adam Tretera on 11/11/2019.
//  Copyright © 2019 Adam Tretera. All rights reserved.
//

import UIKit

class AddItemController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var taskName: UITextField!
    
    @IBOutlet weak var taskDescription: UITextField!
    
  
    
    @IBAction func AddTaskButton() {
        viewController.addTask(taskName: taskName.text ?? "Task", taskDescription: taskDescription.text ?? "yc")

        performSegue(withIdentifier: "setTaskListView", sender: nil)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
