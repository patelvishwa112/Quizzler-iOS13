//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Vishwa Patel on 3/16/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let options: [String]
    let answer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        options = a
        answer = correctAnswer
        
    }
}
