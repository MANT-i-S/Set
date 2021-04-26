//
//  Card.swift
//  Set
//
//  Created by Serhii Holiak on 4/25/21.
//

import Foundation

struct Card {
    //TODO reimplement generation of deck with enum..or at least learn how to do so and check if it's better.
    private let face: String
    
    //red, green, blue
    enum Color {
        case red, blue, green
    }
    enum shade {
        case empty, full, mixed
    }
    enum numberOfSymbols {
        case one, two, three
    }
    
    enum symbol {
        case ● = sym(Color)
    }
    
    private let color: String
    //"empty", "full", "mixed" only.
    private let shade: String
    private let numberOfSymbols: Int
    
    func isSet(_ firstCard: Self, _ secondCard: Self,_ thirdCard: Self) -> Bool {
        //TODO confirm rules of the game and implement this
        return false
    }
    
    init(with symbol: String, of color: String, with numberOfSymbols: Int) {
        self.color = color
        
        var combinedFace = symbol
        for _ in 1..<numberOfSymbols {
            combinedFace += "\n"
            combinedFace += symbol
        }
        self.face = combinedFace
    }
}

//Maybe use to use indexes in enum, or maybe there is a better way.
//extension CaseIterable where Self: Equatable {
//
//    var index: Self.AllCases.Index? {
//        return Self.allCases.firstIndex { self == $0 }
//    }
//}
