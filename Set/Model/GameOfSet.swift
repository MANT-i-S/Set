//
//  Set.swift
//  Set
//
//  Created by Serhii Holiak on 4/25/21.
//

import Foundation

struct GameOfSet {
    
    var score = 0;
    var deck = Deck()
    var threePickedCards = [Card]()
    
    //Check if 3 cards from threePickedCards are set, add score or take off score, if match replace with 3 new cards.
    mutating func processThreePickedCards() {
        if threePickedCards.count == 3 && threePickedCards[0].areSet(threePickedCards[0], threePickedCards[1], threePickedCards[2]) == true {
            for pickedCard in threePickedCards {
                var index = 0
                while index < deck.faceUpCards.count {
                    if deck.faceUpCards[index] == pickedCard {
                        deck.faceUpCards.remove(at: index)
                        break
                    }
                    index += 1
                }
            }
            score += 10
            deck.dealThreeMoreCards()
        } else {
            score += -5
        }
        threePickedCards.removeAll()
    }
}
