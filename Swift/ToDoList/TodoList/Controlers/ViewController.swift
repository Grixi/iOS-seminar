//
//  ViewController.swift
//  TodoList
//
//  Created by Adam Tretera on 02/12/2019.
//  Copyright © 2019 Adam Tretera. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
@IBOutlet weak var taskTable: UITableView!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is AddTaskViewController{
            let vc = segue.destination as? AddTaskViewController
            vc?.taskTable = taskTable
        }
    }
override func viewDidLoad() {
    super.viewDidLoad()
    
    taskTable.delegate = self
    taskTable.dataSource = self
   
}
    

@IBAction func switchViewAddTask() {
    performSegue(withIdentifier: "OpenNewPage", sender: nil)
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return TaskManager.instance.taskList.count
}
    

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
    as! TableViewCell
    
    cell.CellTitle?.text = TaskManager.instance.taskList[indexPath.item].title
    cell.CellText.text = TaskManager.instance.taskList[indexPath.item].description
    cell.CellImg?.image = UIImage(named: TaskManager.instance.taskList[indexPath.item].Color)
  
    
    return cell
}
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
           print("Deleted")
            TaskManager.instance.taskList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
   
        }
    }
   
    

}

