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
    
    init(identifier: Int) {
        self.identifier = identifier
    }
}
