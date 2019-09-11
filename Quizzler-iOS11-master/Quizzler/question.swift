//
//  question.swift
//  Quizzler
//
//  Created by bechin vovan on 2019/09/08.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool){
        questionText = text;
        answer = correctAnswer;
    }
    
}
