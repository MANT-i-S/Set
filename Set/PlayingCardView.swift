//
//  PlayingCardView.swift
//  Set
//
//  Created by Serhii Holiak on 5/2/21.
//

import UIKit

class PlayingCardView: UIView {
    
    let lineWidthOfShading: CGFloat = 0.4
    let gapBetweenShadingLines: CGFloat = 0.015
    //diamonds, ovals, or squiggles
    override func draw(_ rect: CGRect) {
        let shade = 3
        let path = UIBezierPath()
        path.lineWidth = 2
        addDiamonds(to: path, number: 1)
        if shade == 1 {
            //TODO make color variable.
            UIColor.green.setStroke()
            path.stroke()
        } else if shade == 2 {
            //TODO make color variable.
            UIColor.red.setFill()
            path.fill()
        } else if shade == 3 {
            //TODO make color variable.
            UIColor.green.setStroke()
            path.addClip()
            path.stroke()
            addShading(of: UIColor.green)
        }
    }
    
//    path.move(to: CGPoint (x: bounds.midX / 2, y: bounds.midY))
//    path.addLine(to: CGPoint(x: bounds.midX, y: bounds.midY * 0.75))
//    path.addLine(to: CGPoint(x: bounds.maxX * 0.75, y: bounds.midY))
//    path.addLine(to: CGPoint(x: bounds.midX, y: bounds.midY + bounds.midY * 0.25))
//    path.addLine(to: CGPoint (x: bounds.midX / 2, y: bounds.midY))
    
    func addDiamonds(to path: UIBezierPath, number: Int) {
        //TODO Implement function to draw diemond by giving only the most left starting point. Or maybe just draw those shapes manually and move on...
        //Starting X coordinates must be (bounds.midX / 2)
        let point = CGPoint (x: bounds.midX / 2, y: bounds.midY)
        if number == 1 {
            path.move(to: point)
            
            path.addLine(to: CGPoint(x: point.x * 2, y: point.y * 0.75))
            path.addLine(to: CGPoint(x: point.x * 3, y: point.y))
            path.addLine(to: CGPoint(x: point.x * 2, y: point.y * 1.25))
            
            path.addLine(to: point)
        } else if number == 2 {
            
        } else if number == 3 {
            
        } else {
            print("error, wrong quantity")
            //error
        }
    }
    
    /* Shade the whole view diagonally, so better clip before pathing 'path' in it.
     After refering to game rules I realized that shading is just vertical on regular cards,
     but since I spent my time here I decided to keep diagonal shading instead ;) */
    func addShading(of color: UIColor)
    {
        var myX = 0.0
        var myY = 0.0
        let path = UIBezierPath()
        path.lineWidth = lineWidthOfShading
        while myX <= Double(bounds.maxX) {
            myX += Double(bounds.maxX * gapBetweenShadingLines)
            path.move(to: CGPoint(x: myX, y: 0.0))
            myY += Double(bounds.maxY * gapBetweenShadingLines)
            path.addLine(to: CGPoint(x: 0.0, y: myY))
        }
        myX = 0.0
        myY = 0.0
        while myX <= Double(bounds.maxX) {
            myY += Double(bounds.maxY * gapBetweenShadingLines)
            path.move(to: CGPoint(x: Double(bounds.maxX), y: myY))
            myX += Double(bounds.maxX * gapBetweenShadingLines)
            path.addLine(to: CGPoint(x: myX, y: Double(bounds.maxY)))
        }
        UIColor.green.setStroke()
        path.stroke()
    }
}
