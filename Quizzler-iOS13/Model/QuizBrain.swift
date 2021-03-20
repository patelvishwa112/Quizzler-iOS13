//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Vishwa Patel on 3/20/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var questionNumber = 0 // Indicate which question to display
    var totalScore = 0 // Keep track of total score of user
    
    // Check if user got answer right
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            // User got it right
            totalScore += 1
            return true
        }
        else{
            //User got it wrong
            return false
        }
        
    }
    
    // Return next question text
    func getQuestionText() -> String {
        
        return quiz[questionNumber].text
    }
    
    // Return progress value for progressBar
    func getProgress() -> Float {
        return Float(questionNumber+1) / Float(quiz.count)
    }
    
    // Mutating allows func to change struct variables within struct
    mutating func nextQuestion() {
        
        // Update the label with new question
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }
        else{
            // If reached end of list, update questionNumber
            questionNumber = 0
            
            // Reset the score
            totalScore = 0
        }
    }
    
    // Return score
    func getScore() -> Int {
        return totalScore
    }
    
    func getFirstButtonTitle() -> [String]{
        return quiz[questionNumber].options
    }
}
