//
//  Set.swift
//  Set
//
//  Created by Serhii Holiak on 4/25/21.
//

import Foundation

struct GameOfSet {
    
    private let setOfSymbols = ["●", "○", "◎", "■", "□", "☒", "✭", "☆", "✶"]
    private let setOfColors = ["red", "green", "blue"]
    
    lazy var deckOfCards: [Card] = generateDeckOfCards()
    
    var score = 0;
    
    func generateDeckOfCards() -> [Card] {
        var deckOfCards = [Card]()
        var numberOfSymbols = 1
        
        while numberOfSymbols <= 3 {
            for symbol in setOfSymbols {
                for color in setOfColors {
                    deckOfCards.append(Card(with: symbol, of: color, with: numberOfSymbols))
                }
            }
            numberOfSymbols += 1
        }
        print("inside of deckofcards")//TODO remove this.
        return deckOfCards
    }
    
    func dealCards() {
        
    }
    
    func dealThreeMoreCards() {
        
    }

}
