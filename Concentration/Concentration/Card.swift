//
//  Card.swift
//  Concentration
//
//  Created by Stuart Fooks on 2/25/19.
//  Copyright © 2019 Stuart Fooks. All rights reserved.
//

import Foundation

//struct is different from class with 2 main differences:
//1- no inheritence
//2- structs are value types: they get copied when they are used in other areas
//classes are reference types: you point to it
struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    //a static function cannot be sent with a new card, stores on the TYPE card
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
