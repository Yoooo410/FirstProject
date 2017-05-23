//
//  ViewController.swift
//  FirstProject
//
//  Created by yoshitokomiya on 2017-05-23.
//  Copyright © 2017 yoshitokomiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLable: UILabel!
    @IBOutlet var answerLable: UILabel!
    
    let qustions:[String] = [
        "What is the capital city of Japan?",
        "What is the capital city of Canada?",
        "Who is the president of the U.S.A?"
    ]
    
    let answers:[String] = [
        "Tokyo",
        "Ottawa",
        "Donald Tramp"
    ]
    
    var currentQuestionIndex:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLable.text = qustions[currentQuestionIndex]
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex = (currentQuestionIndex + 1) %
            qustions.count
        
        let question:String = qustions[currentQuestionIndex]
        questionLable.text = question
        answerLable.text = "????"
      
    }

    @IBAction func showAnswer(_ sender: UIButton) {
        let answer:String = answers[currentQuestionIndex]
        answerLable.text = answer
    }

}

