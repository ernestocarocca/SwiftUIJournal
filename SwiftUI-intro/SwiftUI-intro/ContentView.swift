//
//  ContentView.swift
//  SwiftUI-intro
//
//  Created by Ernesto Carocca on 2022-12-20.
//

import SwiftUI

struct ContentView: View {
    var persons = [Person(firstName: "Ernesto", lastName: "carocca"),
                   Person(firstName: "leandri", lastName: "svensson"),
                   Person(firstName: "maria", lastName: "hammad"),
                   Person(firstName: "nanno", lastName: "brink")
    ]
    
    
    
    
    
    var body: some View {
        VStack {
            VStack{
                Text("Hej en ny app!")
                HStack{
                    Text("Hej")
                    Text("Allihopa")
                }
                
                List(persons) { person in
                    PersonView(person: person)
                }
                
                
               // List(){
                 //   ForEach(persons) { person in
                   //     VStack{
                     //       /*@START_MENU_TOKEN@*/Text(person.firstName)/*@END_MENU_TOKEN@*/
                          
                       // }
                    }
                }
                
            }
         //   List(){
           //     ForEach(1...100, id: \.self){
             //       i in
               //     Text("Hej \(i)")
                //}
            }
        
struct PersonView : View {
    var person : Person
    var body: some View {
        // Circle().fill(Color.orange).frame(width: 30,height: 30, alignment: .center)
       // ZStack (alignment: .center){
            
           
        //}
        
        VStack(alignment: .leading){
            Text(person.firstName)
            Text(person.lastName)
            
            
            
        }
        ZStack (alignment : .center) {
            LinearGradient(colors: [.purple,.white], startPoint: .topLeading, endPoint: .bottomLeading)
            Text("fin vovve")
            Image("dog2")
            
        }
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
