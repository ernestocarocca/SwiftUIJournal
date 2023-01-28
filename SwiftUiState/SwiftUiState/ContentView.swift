//
//  ContentView.swift
//  SwiftUiState
//
//  Created by Ernesto Carocca on 2023-01-03.
//

import SwiftUI

struct ContentView: View {
//@State  var count = 0
// @StateObject var counter = Counter()
    @EnvironmentObject var counter : Counter
    var body: some View {
        VStack{
            Text("\(counter.count)")
            Button(action:{
                counter.count += 1
                
            }){
                Text("Click")
                
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


//1. räkna klcik med hjälp av state
//2. räkna klck med hjälp av ett observable objekt
//3. räkna klick med hjälp av ett observable objekt som ä ett envoromentobjekt
// skapar en tableview som visar en shoppinglista (skrollbar )
// på varje rad finns det en klickbar ruta som anger om vi köt varan
// dagboksappen förre jul där ser man hur man gör(skapa en klas motsvarande jernel entry)
// börja som state sedan använda de andra 
