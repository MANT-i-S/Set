//
//  Deck.swift
//  Set
//
//  Created by Serhii Holiak on 4/26/21.
//

import Foundation

struct Deck {
    
    private var deckOfCards = [Card]()
    
    var faceUpCards = [Card]()
    
    mutating func dealThreeMoreCards() {
        if deckOfCards.count > 3, faceUpCards.count <= 18 {
            for _ in 1...3 {
                faceUpCards.append(deckOfCards.remove(at: deckOfCards.startIndex))
            }
        }
    }
    
    //Creates array of 81 Cards.
    init(){
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
        deckOfCards.shuffle()
        for _ in 1...12 {
            faceUpCards.append(deckOfCards.remove(at: deckOfCards.startIndex))
        }
    }
}
