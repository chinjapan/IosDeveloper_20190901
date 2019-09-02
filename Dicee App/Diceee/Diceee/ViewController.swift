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
    
    @IBOutlet weak var dicelImageCel2: UIImageView!
    @IBOutlet weak var dicelmageView1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomIndex1 = Int(arc4random_uniform(6))
        randomIndex2 = Int(arc4random_uniform(6))
        
        print(randomIndex1)
        
    }
    
}

