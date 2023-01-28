//
//  ContentView.swift
//  State-repetition
//
//  Created by Ernesto Carocca on 2023-01-12.
//

import SwiftUI

struct ContentView: View {
    @State var count : Int = 0
    @State var isShowingCountSheet = false
    
    var body: some View {
        VStack {
            Text("\(count)")
            Button(action: {
                count += 1
            }){
                
                Text("Click")
            }
            
        
        .sheet(isPresented: isShowingCountSheet,
               CountSheet(count: $count)
               
    
               
               }
               }
            
               struct CountSheet : View {
            
            var count : Int
            var body: some View{
                Text("\(count) ")
            }
        }
            }
            
    
    //struct ContentView_Previews: PreviewProvider {
      //  static var previews: some View {
        //    ContentView()
        //}
    //}
//}
