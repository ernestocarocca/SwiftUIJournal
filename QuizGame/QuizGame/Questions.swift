//
//  Questions.swift
//  QuizGame
//
//  Created by Ernesto Carocca on 2022-12-29.
//

import Foundation
class Questions
{
    var listOfQuestions : Array<String>!
    
    
    var question: String
    var answer : String
    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
    }
    
    
    func listOfQuestion() {
        UUID()
        var question1 = Questions(question: "är tomat en frukt?", answer: "Ja!")
        var question2 = Questions(question: "är äpplen grönsak", answer: "Ja!")
        var question3 = Questions(question: "är bananer gula?", answer: "Ja!")
        var question4 =  Questions(question: "är tomat en grönsak?", answer: "nej!")
        
        
        
        
        
        
        
        
    }
    
}

    

