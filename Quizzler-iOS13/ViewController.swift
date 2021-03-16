//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    let quiz = ["Four + Two is equal to six",
    "Five - Three is greater than One",
    "Three + Eigh is less than ten"]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        questionLabel.text = quiz[0]
        
    }


    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        questionNumber+=1
        
        if questionNumber < 3 {
            questionLabel.text = quiz[questionNumber]
        }
        else{
            questionNumber = 0
            questionLabel.text = quiz[questionNumber]
        }
        
        
    }
}

