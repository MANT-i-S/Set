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
    
    private lazy var deckOfCards: [Card] = createDeckOfCards()
    
    var score = 0;
    
    func createDeckOfCards() -> [Card] {
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
        print("inside of deckofcards")
        print(deckOfCards) //TODO remove this.
        return deckOfCards
    }
    
    func dealCards() {
        
    }
    
    func dealThreeMoreCards() {
        
    }
    
    init() {
        
    }
}
