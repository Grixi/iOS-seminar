//
//  ViewController.swift
//  MegaCulAppka
//
//  Created by Adam Tretera on 22/10/2019.
//  Copyright © 2019 Adam Tretera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number1 : Int = 0
    var number2 : Int = 0
    var resultNumber : Int = 0
    var znak : String = ""
 
    
    @IBOutlet weak var displayCa: UILabel!
    
    @IBOutlet weak var operace: UILabel!
    
  
    
    @IBAction func sevenButton(_ sender: UIButton) {
        
        displayCa.text = displayCa.text! + String(sender.tag)
        number1 = Int(displayCa.text!)!
    }
    @IBAction func operace(_ sender: UIButton) {
        
       
        if (resultNumber != 0){
            
            number2 = resultNumber;
        }
            
        else{
           number2 = number1;
        }
             
        displayCa.text = ""
        number1 = 0;
        }
    
    @IBAction func nasobeni(_ sender: Any) {
        znak = "/"
        operace.text = "/"
        
    }
    
    
    @IBAction func deleni(_ sender: Any) {
        znak = "*"
        operace.text = "*"
    }
    
    
    @IBAction func odcitani(_ sender: Any) {
        znak = "-"
        operace.text = "-"
    }
    
    @IBAction func scitani(_ sender: Any) {
        znak = "+"
        operace.text = "+"
    }
    
        
    @IBAction func result(_ sender: Any) {
        switch znak {
        case "*":
            resultNumber = number2 * number1
             displayCa.text = String(resultNumber)
        case "/":
            if (number1 == 0){
               
                let zeroText :String = "Nulou nelze dělit"
                displayCa.text = zeroText;
                
            }
            else{
                resultNumber = number2 / number1
                 displayCa.text = String(resultNumber)
            }
           
        case "-":
            resultNumber = number2 - number1
             displayCa.text = String(resultNumber)
        case "+":
            resultNumber = number2 + number1
             displayCa.text = String(resultNumber)
        default:
            displayCa.text = "Error"
        }
       
        operace.text = "="
        
    }
    
  
    
    @IBAction func delete1(_ sender: Any) {
        deleteValues();
        
    }
    func deleteValues(){
        displayCa.text = ""
                  number1 = 0
                  number2 = 0
                  resultNumber = 0
             operace.text = ""
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }


}

