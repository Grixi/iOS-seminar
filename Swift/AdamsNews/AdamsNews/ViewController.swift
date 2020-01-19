//
//  ViewController.swift
//  AdamsNews
//
//  Created by Adam Tretera on 14/01/2020.
//  Copyright © 2020 Adam Tretera. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        Alamofire.request("https://newsapi.org/v2/everything?q=bitcoin&from=2019-12-14&sortBy=publishedAt&apiKey=ad46a5aeea574adaade43950722c0fa6").responseJSON { (response) in
            let json = try! JSON (data: response.data!)
            json["articles"].arrayValue
            for index in 0...json.count-1 {
                
                //let aObject = json[index] as! [String : AnyObject]
                
                print(index)
            
            }
            
           
            
            
            print(json)
            
            
            

        
            
            
        }
        
        
        
        
        // Do any additional setup after loading the view.
    }


}

