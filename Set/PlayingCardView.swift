//
//  PlayingCardView.swift
//  Set
//
//  Created by Serhii Holiak on 5/2/21.
//

import UIKit

class PlayingCardView: UIView {
    
    override func draw(_ rect: CGRect) {
        let shade = 2
        if let context = UIGraphicsGetCurrentContext() {
            context.move(to: CGPoint (x: bounds.midX / 2, y: bounds.midY))
            context.addLine(to: CGPoint(x: bounds.midX, y: bounds.midY * 0.75))
            context.addLine(to: CGPoint(x: bounds.maxX * 0.75, y: bounds.midY))
            context.addLine(to: CGPoint(x: bounds.midX, y: bounds.midY + bounds.midY * 0.25))
            context.addLine(to: CGPoint (x: bounds.midX / 2, y: bounds.midY))
            if shade == 1 {
                //TODO make color variable.
                UIColor.green.setStroke()
                context.strokePath()
            } else if shade == 2 {
                UIColor.red.setFill()
                context.fillPath()
            } else if shade == 3 {
                //TODO figure out how to create effect of shade
            }
        }
    }
}
