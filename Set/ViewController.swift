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
        scoreLabel.text = "Score: \(game.score)"
        for cardButton in cardButtons {
            cardButton.setTitle(nil, for: .normal)
            cardButton.backgroundColor = nil
        }
        for index in game.deck.faceUpCards.indices {
            if let tmpButton = self.view.viewWithTag(index + 1) as? UIButton {
                if tmpButton.currentTitle == nil {
                    tmpButton.setTitle(game.deck.faceUpCards[index].faceOfTheCard, for: .normal)
                    tmpButton.backgroundColor = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
                    switch game.deck.faceUpCards[index].color {
                    case .red:
                        tmpButton.setTitleColor(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), for: .normal)
                    case .blue:
                        tmpButton.setTitleColor(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1), for: .normal)
                    case .green:
                        tmpButton.setTitleColor(#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1), for: .normal)
                    }
                } else {
                    tmpButton.backgroundColor = nil
                }
            }
        }
    }
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBAction func newGame(_ sender: UIButton) {
        game = GameOfSet()
        viewCardsUpdate()
    }
    
    @IBAction func dealThreeMoreCards(_ sender: UIButton) {
        if game.deck.faceUpCards.count < 18 {
            game.score += -1
            game.deck.dealThreeMoreCards()
            viewCardsUpdate()
        }
    }
    //Max of 18 cards can be face up on the board without a Set.
    @IBOutlet var cardButtons: [UIButton]!
    
    //Simulate selecting\deselecting of card, send to check if set when 3 cards selected.
    @IBAction func touchCard(_ sender: UIButton) {
        if sender.tag <= game.deck.faceUpCards.count, game.threePickedCards.count < 3, sender.backgroundColor != #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1) {
            sender.backgroundColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
            game.threePickedCards.append(game.deck.faceUpCards[sender.tag - 1])
            if game.threePickedCards.count >= 3, game.threePickedCards.count == 3 {
                game.processThreePickedCards()
                viewCardsUpdate()
                for index in game.deck.faceUpCards.indices {
                    if let tmpButton = self.view.viewWithTag(index + 1) as? UIButton {
                        tmpButton.backgroundColor = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
                    }
                }
            }
        } else if sender.tag <= game.deck.faceUpCards.count, sender.backgroundColor == #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1) {
            sender.backgroundColor = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
            for index in game.threePickedCards.indices {
                if game.deck.faceUpCards[sender.tag - 1] == game.threePickedCards[index] {
                    game.threePickedCards.remove(at: index)
                }
            }
        }
    }
}

