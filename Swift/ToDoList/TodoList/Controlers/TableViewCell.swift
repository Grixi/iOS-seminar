//
//  TableViewCell.swift
//  TodoList
//
//  Created by Adam Tretera on 04/12/2019.
//  Copyright © 2019 Adam Tretera. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBOutlet weak var CellImg: UIImageView!
    
    @IBOutlet weak var CellText: UILabel!
    

    @IBAction func moreDescription() {
        TaskManager.instance.addMore(CellText: CellText.text ?? "text", CellTitle: CellTitle.text ?? "title")
    }
    
    @IBOutlet weak var CellTitle: UILabel!
    
  
    
    override func setSelected(_ selected: Bool, animated: Bool) {
      
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
