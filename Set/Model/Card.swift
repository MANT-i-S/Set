//
//  Card.swift
//  Set
//
//  Created by Serhii Holiak on 4/25/21.
//

import Foundation

struct Card {
    private let setOfSymbols = ["●", "○", "◎", "■", "□", "☒", "✭", "☆", "✶"] // move this to controller maybe? But that way I'll have to generate face in controller also...is this action part of controller?o_O think about it.
    let face: String
    
    private enum Shape: CaseIterable {
        case circle, square, star
    }
    
    private enum Fill: CaseIterable {
        case empty, full, middle
    }
    
    private enum NumberOfSymbols: CaseIterable {
        case one, two, three
    }
    
    private enum Color: CaseIterable {
        case red, blue, green
    }
    
    private let shape: Shape
    private let fill: Fill
    private let numberOfSymbols: NumberOfSymbols
    private let color: Color
    
    func areSet(_ firstCard: Self, _ secondCard: Self,_ thirdCard: Self) -> Bool {
        //TODO confirm rules of the game and implement this
        return false
    }
    
    private func faceGenerator() {
        switch shape {
        case .circle:
            print (shape)
        case .square:
            print (shape)
        case .star:
            print (shape)
        }
        //TODO implement face generator.
    }
    
    init(_ shapeIndex: Int, _ colorIndex: Int, _ fillIndex: Int, _ numberOfSymbolsIndex: Int) {
        self.shape = Shape.allCases[shapeIndex]
        self.color = Color.allCases[colorIndex]
        self.fill = Fill.allCases[fillIndex]
        self.numberOfSymbols = NumberOfSymbols.allCases[numberOfSymbolsIndex]
        self.face = "?" //TODO maybe its not part of the model.
    }
}

