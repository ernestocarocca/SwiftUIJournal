//
//  ContentView.swift
//  DiceGame
//
//  Created by Ernesto Carocca on 2022-12-20.
//

import SwiftUI

// skapa ett tärningspel där man slår 2 tärningar  efter valfritt anral slag
//kan omgången avslutas, då sparas hittils uppnådda poäng
// om poängen flr en omgång överskrider 21 blir stället poängen för den omgångewn 0
// målet är att uppnå 100p på så få omgångar som möjligt

struct ContentView: View {
    @State var diceNumber1 = 4
    @State var diceNumber2 = 2
    @State var sum = 0
    @State var showingBustSheet = false
    @State var savedPoints = 0
 
    var body: some View {
        ZStack {
            Color(red: 51/256, green: 106/256, blue: 61/256)
                .ignoresSafeArea()
            
            VStack {
                Text("\(sum)")
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Spacer()
                HStack {
                    DiceView(n: diceNumber1)
                    DiceView(n: diceNumber2)
                }.onAppear() {
                    newDiceValues()
                }
                Spacer()
                
                Button(action: {
                    roll()
                    
                }) {
                    Text("Roll")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                .cornerRadius(15.0)
                Spacer()
            }
            VStack{
                
                Button(action: {stopAndAddToSum()}){
                    Text("Press to add points")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .fixedSize()
                    // .position(x:100,y:100)
                    
                    
                }
                .background(.red)
                .cornerRadius(45.0)
                .frame(width: 300, height: 50, alignment: .center)
                .position(x:200,y:700)
            }
            VStack{
                Text("\(savedPoints)")
                    .font(.largeTitle)
            }
        }
        .sheet(isPresented: $showingBustSheet, onDismiss: { sum = 0 }) {
            BustSheet(sum: sum)
        }
    }
    func roll(){
        newDiceValues()
        
        sum += diceNumber1 + diceNumber2
        
       if (sum > 21){
       //     showingBustSheet = true
        sum = 0
        }
    }
    
    func stopAndAddToSum(){
      //  if(b)
         savedPoints = savedPoints + sum
        
    }
    
    func newDiceValues(){
        diceNumber1 = Int.random(in: 1...6)
        diceNumber2 = Int.random(in: 1...6)
        
        
    }
}


struct DiceView : View{
    let n: Int
    
    var body: some View{
        Image(systemName: "die.face.\(n)")
            .resizable()
            .aspectRatio( contentMode: .fit)
            .padding()
        
    }
}
struct BustSheet : View{
    let sum : Int
    
    var body: some View{
        ZStack{
            Color(red: 51/256, green: 106/256, blue: 61/256)
                .ignoresSafeArea()
            VStack{
                Text("Bust")
                    .foregroundColor(.white)
                    .font(.title)
                
                
                Text("\(sum)")
            }
            
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
