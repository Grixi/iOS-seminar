
//  Created by Adam Tretera on 07/01/2020.
//  Copyright © 2020 Adam Tretera. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    var flipCount = 0
    
    var visabaleCards = [UIButton](){
        didSet{
            print(visabaleCards)
            if(visabaleCards.count >= 2){
                
                ifMatch(array: visabaleCards)
            }
        }
    }
    
    var emojiArray = ["🌕", "🌕", "🌖", "🌖", "🌗", "🌗", "🌓", "🌓",
                      "🌑","🌑"].shuffled()
    
    var matchCount = 0 {
        didSet{
            print(matchCount)
            if matchCount >= 1{
    
                let viewController:MainMenuViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Win") as UIViewController as! MainMenuViewController
    
                viewController.flips = flipCount
                self.present(viewController, animated: true, completion: nil)
            }
        }
    }

    @IBOutlet var cardButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func touchCard(_ sender: UIButton) {
        
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
        print("Cardbutton nr: \(cardNumber)")
        flipcard(withEmoji: emojiArray[cardNumber], on: sender)
        }else{
           
        }
    }
    
    func flipcard(withEmoji emoji: String, on button: UIButton ){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
            
          
        }
        else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
            if(!visabaleCards.contains(button)){
            visabaleCards.append(button)
            }
       
        }
    }
    
    func ifMatch(array: [UIButton]){
        if(array.first?.currentTitle == array.last?.currentTitle){
          
            array.first?.isEnabled = false
            array.first?.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
            
            array.last?.isEnabled = false
            array.last?.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
            
            matchCount += 1
        }else{
            
            array.last?.setTitle("", for: UIControl.State.normal)
            array.last?.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
            
            array.first?.setTitle("", for: UIControl.State.normal)
            array.first?.backgroundColor = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
        }
        visabaleCards.removeAll()
    }
    
}
