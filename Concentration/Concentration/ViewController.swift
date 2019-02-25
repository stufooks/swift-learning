//
//  ViewController.swift
//  Concentration
//
//  Created by Stuart Fooks on 2/25/19.
//  Copyright © 2019 Stuart Fooks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game = Concentration()
    //instance variable or property
    //MUST have an initial value
    //hold down option and click on a variable to see data type
    //can put brackets after a variable
    //didSet executes everytime that variable gets set
    //called property observer
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }

    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎃", "👻", "🎃", "👻"]
    
    //IBAction is an Xcode thing not a Swift thing
    //each parameter has an external name and an internal name
    //the external name is used when you call the function
    //return values also have to be declared for example -> Int
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        //return value of index is an Optional data type
        //has two states: set and not set (nil)
        //putting an ! at the end of an optional says: assume this optional is set and grab the associated value
        //putting if at the beggining of an optional declaration will only execute if the optional is set, aka not nil
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("chosen card not in array")
        }
        
    }
    
    //withEmoji is external, emoji is internal
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

