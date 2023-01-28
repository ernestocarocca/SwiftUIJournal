//
//  SwiftUiStateApp.swift
//  SwiftUiState
//
//  Created by Ernesto Carocca on 2023-01-03.
//

import SwiftUI

@main
struct SwiftUiStateApp: App {
    @StateObject var counter = Counter()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(counter)
        }
        
    }
}

