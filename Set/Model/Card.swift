//
//  Card.swift
//  Set
//
//  Created by Serhii Holiak on 4/25/21.
//

import Foundation

struct Card {
    
    //Used to fill button's title.
    lazy var faceOfTheCard = faceGenerator()
    
    private enum Shape: CaseIterable {
        case circle, square, star
    }
    
    private enum Fill: CaseIterable {
        case empty, full, middle
    }
    
    private enum NumberOfSymbols: Int, CaseIterable {
        case one = 1, two = 2, three = 3 //'= 2' '= 3' may be removed, if needed.
    }
    
    enum Color: CaseIterable {
        case red, blue, green
    }
    
    private let shape: Shape
    private let fill: Fill
    private let numberOfSymbols: NumberOfSymbols
    let color: Color
    
    //RULE #1 OF "SET" : YOU CAN =NOT= HAVE TWO OF ANYTHING !! You can have "none" of an attribute, or three, but never two! (Comment from youtube video xD)
    func areSet(_ firstCard: Self, _ secondCard: Self,_ thirdCard: Self) -> Bool {
        if Set([firstCard.shape, secondCard.shape, thirdCard.shape]).count != 2,
            Set([firstCard.color, secondCard.color, thirdCard.color]).count != 2,
            Set([firstCard.numberOfSymbols, secondCard.numberOfSymbols, thirdCard.numberOfSymbols]).count != 2,
            Set([firstCard.fill, secondCard.fill, thirdCard.fill]).count != 2 {
            return true
        } else {
            return false
        }
    }
    
    //Create String for UI button.
    //["●", "○", "◎", "■", "□", "☒", "✭", "☆", "✡︎"]
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
                face += "✡︎"
                for _ in 1..<numberOfSymbols.rawValue {
                    face += "\n"
                    face += "✡︎"
                }
            }
        }
        return face
    }
    
    //Checks if 2 cards identical.
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.shape == rhs.shape && lhs.color == rhs.color && lhs.fill == rhs.fill && rhs.numberOfSymbols == lhs.numberOfSymbols
    }
    
    init(_ shapeIndex: Int, _ colorIndex: Int, _ fillIndex: Int, _ numberOfSymbolsIndex: Int) {
        self.shape = Shape.allCases[shapeIndex]
        self.color = Color.allCases[colorIndex]
        self.fill = Fill.allCases[fillIndex]
        self.numberOfSymbols = NumberOfSymbols.allCases[numberOfSymbolsIndex]
    }
}

