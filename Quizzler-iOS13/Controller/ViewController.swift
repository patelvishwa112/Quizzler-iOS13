//
//  ViewController.swift
//  Quizzler-iOS13
//
// Should only responsible to tell View what to display

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        // Get title of button and actual answer for question
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        // Change color if button title is equal to actual answer
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        }
        else {
            // Else Change button color to red
            sender.backgroundColor = UIColor.red
        }
        // Set next question
        quizBrain.nextQuestion()
        
        // Add timer to update the button style to original form
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        // Update label text
        questionLabel.text = quizBrain.getQuestionText()
        
        // Update button text
        let options: [String] =  quizBrain.getFirstButtonTitle()
        
        firstButton.setTitle(options[0], for: .normal)
        secondButton.setTitle(options[1], for: .normal)
        thirdButton.setTitle(options[2], for: .normal)
        
        // Update score
        scoreLabel.text = "Score:\(quizBrain.getScore())"
        
        // Update progressBar
        progressBar.progress = quizBrain.getProgress()
        
        // Change the color of buttons
        firstButton.backgroundColor = UIColor.clear
        secondButton.backgroundColor = UIColor.clear
        thirdButton.backgroundColor = UIColor.clear
        
        
    }
}

