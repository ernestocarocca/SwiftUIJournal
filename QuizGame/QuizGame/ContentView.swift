//
//  ContentView.swift
//  QuizGame
//
//  Created by Ernesto Carocca on 2022-12-19.
//

import SwiftUI


struct ContentView: View {
    var currentQuestion = " "
    var quest : Questions!
  //  FirebaseApp.configure()

    //let db = Firestore.firestore()
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.white,Color.red, Color.blue]), startPoint: .topLeading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            
            
      
            var q1 = Questions(question: "fråga1", answer: "Svar1")
            var q2 = Questions(question: "fråga2", answer: "Svar2")
            
            var q3 = Questions(question: "fråga3", answer: "Svar3")
            
            
            
            var questionAndAnswerList = [q1.question,q2.question,q3.question]
           
            Text(getQuestionlist())
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
func getQuestionlist() -> String {
   
    
    var q1 = Questions(question: "Vad är en", answer: "Svar1")
    var q2 = Questions(question: "fråga2", answer: "Svar2")
    var q3 = Questions(question: "fråga3", answer: "Svar3")
    var questionAndAnswerList = [q1.question,q2.question,q3.question]
    let randomQuestion = questionAndAnswerList.randomElement()
    
  
    return randomQuestion+0¨ökijytgrcxeds
}
