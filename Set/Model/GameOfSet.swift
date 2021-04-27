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
