//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestion = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fistQuestion = allQuestion.list[0]
        questionLabel.text = fistQuestion.questionText
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber += 1
        
        nextQuestion()
        
        
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        if ( questionNumber <= 12 ){
            questionLabel.text = allQuestion.list[questionNumber].questionText
        }
        else {
            let alert =  UIAlertController(title: "Awesome", message: "You have finished all question,Do you want to restart", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: NSLocalizedString("Restart", comment: "Default action"), style: .default, handler: { (UIAlertAction) in
                self.startOver()
            }))
            present(alert, animated: true, completion: nil)
            
            
            
            
            
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestion.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            print("You got it")
        } else {
            print("Wrong")
        }
        
    }
    
    
    func startOver() {
       questionNumber = 0
    }
    

    
}
