//
//  Set.swift
//  Set
//
//  Created by Serhii Holiak on 4/25/21.
//

import Foundation

struct GameOfSet {
    
    //private let setOfSymbols = ["●", "○", "◎", "■", "□", "☒", "✭", "☆", "✶"]
    
    lazy var deckOfCards: [Card] = generateDeckOfCards()
    
    var score = 0;
    
    func generateDeckOfCards() -> [Card] {
        var deckOfCards = [Card]()
        
        var shapeIndex = 0
        
        while shapeIndex < 3 {
            var colorIndex = 0
            while colorIndex < 3 {
                var fillIndex = 0
                while fillIndex < 3 {
                    var numberOfSymbolsIndex = 0
                    while numberOfSymbolsIndex < 3 {
                        deckOfCards.append(Card(shapeIndex, colorIndex, fillIndex, numberOfSymbolsIndex))
                        numberOfSymbolsIndex += 1
                    }
                    fillIndex += 1
                }
                colorIndex += 1
            }
            shapeIndex += 1
        }
        print("inside of deckofcards")//TODO remove this.
        return deckOfCards
    }
    
    func dealCards() {
        
    }
    
    func dealThreeMoreCards() {
        
    }

}
