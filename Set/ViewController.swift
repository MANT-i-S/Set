//
//  ViewController.swift
//  Set
//
//  Created by Serhii Holiak on 4/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    var game = GameOfSet()
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        var i = 0
        while i < 81 {
            print("----")
            print(game.deckOfCards[i].faceOfTheCard)
            print("----")
            i += 1
        }
    }
    
}

