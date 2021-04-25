//
//  ViewController.swift
//  Set
//
//  Created by Serhii Holiak on 4/25/21.
//

import UIKit

class ViewController: UIViewController {
    
    let game = GameOfSet()
    
    override func viewDidLoad() {
        
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
    }
    
}

