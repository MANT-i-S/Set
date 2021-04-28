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
    
    mutating func processThreePickedCards() {
        if threePickedCards.count == 3 && threePickedCards[0].areSet(threePickedCards[0], threePickedCards[1], threePickedCards[2]) == true {
            print("Cards are set") //TODO remove
            for pickedCard in threePickedCards {
                for index in deck.faceUpCards.indices {
                    if deck.faceUpCards[index] == pickedCard {
                        print("card removed") //TODO Remove
                        //TODO figure out the way to remove cards.
                        deck.faceUpCards.remove(at: index)
                    }
                    continue
                }
            }
        }
        print("Cards cleared") //TODO remove
        threePickedCards.removeAll()
    }
    
    mutating func test() {
        
        print("after dealing")
        for index in 0..<deck.faceUpCards.count {
            print("---")
            print(deck.faceUpCards[index].faceOfTheCard)
            print("---")
        }
        print("Cards in faceupdeck \(deck.faceUpCards.count)")
        deck.dealThreeMoreCards()
        print("after dealing 3 more cards")
        for index in 0..<deck.faceUpCards.count {
            print("---")
            print(deck.faceUpCards[index].faceOfTheCard)
            print("---")
        }
        print("Cards in faceupdeck \(deck.faceUpCards.count)")
    }
    
    init() {
        
    }
}
