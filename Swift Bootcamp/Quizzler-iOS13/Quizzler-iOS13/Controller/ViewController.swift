//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var TrueBtn: UIButton!
    @IBOutlet weak var scoreKeep: UILabel!
    @IBOutlet weak var FalseBtn: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func AnswerBtnPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! // True/False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
//      Changes the highlighting of user answer to match the button
        sender.layer.cornerRadius = 0.3 * sender.bounds.size.height
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.updateUI()
        }
    }
    

    
    func updateUI(){
        questionText.text = quizBrain.getQuestionText()
        TrueBtn.backgroundColor = UIColor.clear
        FalseBtn.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        scoreKeep.text = "Score: \(String(quizBrain.getScore()))"
    }
    
}

