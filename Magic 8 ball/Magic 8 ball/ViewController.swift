//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by bechin vovan on 2019/09/02.
//  Copyright © 2019 bechinvovan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber = 0
    
    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ChangeImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        ChangeImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        ChangeImage()
    }
    func ChangeImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        
        ImageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

