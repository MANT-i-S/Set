//
//  Card.swift
//  Set
//
//  Created by Serhii Holiak on 4/25/21.
//

import Foundation

struct Card {
    lazy var faceOfTheCard = faceGenerator()
    
    var cardButtonIndex : Int?
    
    private enum Shape: CaseIterable {
        case circle, square, star
    }
    
    private enum Fill: CaseIterable {
        case empty, full, middle
    }
    
    private enum NumberOfSymbols: Int, CaseIterable {
        case one = 1, two, three
    }
    
    enum Color: CaseIterable {
        case red, blue, green
    }
    
    private let shape: Shape
    private let fill: Fill
    private let numberOfSymbols: NumberOfSymbols
    let color: Color
    
    func areSet(_ firstCard: Self, _ secondCard: Self,_ thirdCard: Self) -> Bool {
        //TODO confirm rules of the game and implement this
        return false
    }
    
    //["●", "○", "◎", "■", "□", "☒", "✭", "☆", "✶"]
    private func faceGenerator() -> String {
        var face = String()
        
        switch shape {
        case .circle:
            switch fill {
            case .empty:
                face += "○"
                for _ in 1..<numberOfSymbols.rawValue {
                    face += "\n"
                    face += "○"
                }
            case .full:
                face += "●"
                for _ in 1..<numberOfSymbols.rawValue {
                    face += "\n"
                    face += "●"
                }
            case .middle:
                face += "◎"
                for _ in 1..<numberOfSymbols.rawValue {
                    face += "\n"
                    face += "◎"
                }
            }
        case .square:
            switch fill {
            case .empty:
                face += "□"
                for _ in 1..<numberOfSymbols.rawValue {
                    face += "\n"
                    face += "□"
                }
            case .full:
                face += "■"
                for _ in 1..<numberOfSymbols.rawValue {
                    face += "\n"
                    face += "■"
                }
            case .middle:
                face += "☒"
                for _ in 1..<numberOfSymbols.rawValue {
                    face += "\n"
                    face += "☒"
                }
            }
        case .star:
            switch fill {
            case .empty:
                face += "☆"
                for _ in 1..<numberOfSymbols.rawValue {
                    face += "\n"
                    face += "☆"
                }
            case .full:
                face += "✭"
                for _ in 1..<numberOfSymbols.rawValue {
                    face += "\n"
                    face += "✭"
                }
            case .middle:
                face += "✶"
                for _ in 1..<numberOfSymbols.rawValue {
                    face += "\n"
                    face += "✶"
                }
            }
        }
        return face
    }
    
    init(_ shapeIndex: Int, _ colorIndex: Int, _ fillIndex: Int, _ numberOfSymbolsIndex: Int) {
        self.shape = Shape.allCases[shapeIndex]
        self.color = Color.allCases[colorIndex]
        self.fill = Fill.allCases[fillIndex]
        self.numberOfSymbols = NumberOfSymbols.allCases[numberOfSymbolsIndex]
    }
}

