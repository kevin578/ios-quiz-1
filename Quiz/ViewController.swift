//
//  ViewController.swift
//  Quiz
//
//  Created by Kevin Briggs on 8/7/17.
//  Copyright © 2017 Kevin Briggs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!

    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont",
        "What is cognac made of"
    ]
    
    let answers: [String] = [
        "14",
        "Montpilier",
        "Grapes"
    
    ]
    
    var questionIndex = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        questionIndex += 1
        if questionIndex == questions.count {
            questionIndex = 0
        }
        questionLabel.text = questions[questionIndex]
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer = answers[questionIndex]
        answerLabel.text = answer
    }


}

