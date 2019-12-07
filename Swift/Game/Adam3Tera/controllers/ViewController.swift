//
//  ViewController.swift
//  Adam3Tera
//
//  Created by Adam Tretera on 05/11/2019.
//  Copyright © 2019 Adam Tretera. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    private let animals = ["🙊","🙊","🙈","🐒"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        
        cell.textLabel?.text = animals[indexPath.item]
        
        return cell
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        tvAnimlas.delegate = self
        tvAnimlas.dataSource = self
      
    }
    

    @IBAction func openNewScreen() {
        performSegue(withIdentifier: "OpenNewPage", sender: nil)
    }
    
    @IBOutlet weak var tvAnimlas: UITableView!
}

