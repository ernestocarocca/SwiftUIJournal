//
//  ContentView.swift
//  WetherApp
//
//  Created by Ernesto Carocca on 2022-12-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue,Color.white]), startPoint: .topLeading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
          
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
