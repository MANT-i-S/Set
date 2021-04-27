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
        viewCardsUpdate()
    }
    
    func viewCardsUpdate() {
        var index = 0
        print(game.deck.faceUpCards.count)
        for cardButton in cardButtons {
            cardButton.setTitle(nil, for: .normal)
        }
        for cardButton in cardButtons {
            if index < game.deck.faceUpCards.count, cardButton.currentTitle == nil {
                cardButton.setTitle(game.deck.faceUpCards[index].faceOfTheCard, for: .normal)
                switch game.deck.faceUpCards[index].color {
                case .red:
                    cardButton.setTitleColor(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), for: .normal)
                case .blue:
                    cardButton.setTitleColor(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1), for: .normal)
                case .green:
                    cardButton.setTitleColor(#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1), for: .normal)
                }
                index += 1
            }
        }
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        game.test()
        viewCardsUpdate()
    }
    
}

