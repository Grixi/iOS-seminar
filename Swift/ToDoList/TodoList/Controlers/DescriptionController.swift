//
//  DescriptionController.swift
//  TodoList
//
//  Created by Adam Tretera on 06/12/2019.
//  Copyright © 2019 Adam Tretera. All rights reserved.
//

import UIKit

class DescriptionController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        moreTitle.text = TaskManager.instance.cellTitle
         moreDescription.text = TaskManager.instance.cellText
        
       
    }
    
    @IBAction func closeDescription(_ sender: Any) {
          self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var moreTitle: UILabel!
    
  
  
    @IBOutlet weak var moreDescription: UITextView!
    
    
   
}
