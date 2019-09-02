//
//  ViewController.swift
//  Diceee
//
//  Created by bechin vovan on 2019/09/01.
//  Copyright © 2019 bechinvovan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomIndex1 :Int = 0
    var randomIndex2 :Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var dicelmageView2: UIImageView!
    @IBOutlet weak var dicelmageView1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomIndex1 = Int(arc4random_uniform(6))
        randomIndex2 = Int(arc4random_uniform(6))
        
        dicelmageView1.image = UIImage(named: diceArray[randomIndex1])
        dicelmageView2.image = UIImage(named: diceArray[randomIndex2])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

