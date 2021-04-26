//
//  ViewController.swift
//  Set
//
//  Created by Serhii Holiak on 4/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    var game = GameOfSet()
    
    override func viewDidLoad() {
        var index = 0
        for cardButton in cardButtons {
            if index < game.deck.faceUpCards.count {
                cardButton.setTitle(game.deck.faceUpCards[index].faceOfTheCard, for: .normal)
                index += 1
            }
        }
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        game.test()
    }
    
}

