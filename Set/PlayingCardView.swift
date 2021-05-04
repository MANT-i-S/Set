//
//  PlayingCardView.swift
//  Set
//
//  Created by Serhii Holiak on 5/2/21.
//

import UIKit

class PlayingCardView: UIView {
    
    override func draw(_ rect: CGRect) {
        let shade = 1
        let path = UIBezierPath()
        path.move(to: CGPoint (x: bounds.midX / 2, y: bounds.midY))
        path.addLine(to: CGPoint(x: bounds.midX, y: bounds.midY * 0.75))
        path.addLine(to: CGPoint(x: bounds.maxX * 0.75, y: bounds.midY))
        path.addLine(to: CGPoint(x: bounds.midX, y: bounds.midY + bounds.midY * 0.25))
        path.addLine(to: CGPoint (x: bounds.midX / 2, y: bounds.midY))
        path.addClip()
        path.addLine(to: CGPoint (x: bounds.maxX, y: bounds.midY))
        if shade == 1 {
            //TODO make color variable.
            UIColor.green.setStroke()
            path.stroke()
        } else if shade == 2 {
            UIColor.red.setFill()
            path.fill()
        } else if shade == 3 {
            //TODO figure out how to create effect of shade
        }
    }
    
    func addShading()
    {
        
    }
}
