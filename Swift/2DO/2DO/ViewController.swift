//
//  ViewController.swift
//  2DO
//
//  Created by Adam Tretera on 11/11/2019.
//  Copyright © 2019 Adam Tretera. All rights reserved.
//

import UIKit

var viewController = ViewController()

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    override func viewDidLoad() {
         super.viewDidLoad()
       TableViewTasks.delegate = self
       TableViewTasks.dataSource = self
     }
    
    var tasks: Array<String> = []
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        
        cell.textLabel?.text = tasks[indexPath.item]
        
        return cell
    }
 

   public func addTask(taskName: String, taskDescription: String){
        tasks.append("asd")
       

       
    }
        
    
    
 
    
 
    
    
    @IBAction func OpenNewPage(_ sender: Any) {
          performSegue(withIdentifier: "OpenNewPage", sender: nil)
        
    }
    
    
    @IBOutlet weak var TableViewTasks: UITableView!
    
    
}

