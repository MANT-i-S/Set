//
//  Card.swift
//  Set
//
//  Created by Serhii Holiak on 4/25/21.
//

import Foundation

struct Card {
    
    //"●" "○" "◎" / "■" "□" "☒" / "✭" "☆" "✶"
    private let symbol: String
    
    private let color: String
    //from 1 to 3
    private let numberOfSymbols: Int
    
    init(with symbol: String, of color: String, with numberOfSymbols: Int) {
        self.symbol = symbol
        self.color = color
        self.numberOfSymbols = numberOfSymbols
    }
}
