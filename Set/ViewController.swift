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
        for buttonIndex in cardButtons.indices {
            if index < game.deck.faceUpCards.count, cardButtons[buttonIndex].currentTitle == nil {
                cardButtons[buttonIndex].setTitle(game.deck.faceUpCards[index].faceOfTheCard, for: .normal)
                cardButtons[buttonIndex].backgroundColor = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
                switch game.deck.faceUpCards[index].color {
                case .red:
                    cardButtons[buttonIndex].setTitleColor(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), for: .normal)
                case .blue:
                    cardButtons[buttonIndex].setTitleColor(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1), for: .normal)
                case .green:
                    cardButtons[buttonIndex].setTitleColor(#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1), for: .normal)
                }
                index += 1
            }
        }
    }
    
    //Max of 18 cards can be face up on the board without a Set.
    @IBOutlet var cardButtons: [UIButton]!
    
    //Simulate selecting\deselecting of card, send to check if set when 3 cards selected.
    @IBAction func touchCard(_ sender: UIButton) {
        if sender.tag < game.deck.faceUpCards.count, game.threePickedCards.count < 3, sender.backgroundColor != #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1) {
            sender.backgroundColor = #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1)
            game.threePickedCards.append(game.deck.faceUpCards[sender.tag])
            print("game.threePickedCards.count = \(game.threePickedCards.count)")
            if game.threePickedCards.count >= 3, game.threePickedCards.count == 3 {
                print("step 1")
                game.processThreePickedCards()
                for index in game.deck.faceUpCards.indices {
                    if let tmpButton = self.view.viewWithTag(index) as? UIButton {
                        tmpButton.backgroundColor = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
                    }
                }
            }
        } else if sender.tag < game.deck.faceUpCards.count, sender.backgroundColor == #colorLiteral(red: 1, green: 0.8323456645, blue: 0.4732058644, alpha: 1) {
            sender.backgroundColor = #colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1)
            for index in game.threePickedCards.indices {
                if game.deck.faceUpCards[sender.tag] == game.threePickedCards[index] {
                    game.threePickedCards.remove(at: index)
                }
            }
        }
//        game.test()
    }
}

