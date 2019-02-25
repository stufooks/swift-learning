//
//  Concentration.swift
//  Concentration
//
//  Created by Stuart Fooks on 2/25/19.
//  Copyright © 2019 Stuart Fooks. All rights reserved.
//

import Foundation

class Concentration {
    var cards = [Card]()
    
    func ChooseCard(at index: Int) {
        
    }
    
    init(numberOfPairsOfCards: Int) {
        //for loop in swift using a "countable range"
        for identifier in 0...numberOfPairsOfCards {
            let card = Card()
            //structs are copies so when you pass them around it creates a new copy each time
            cards.append(card)
            cards.append(card)
        }
    }
}
