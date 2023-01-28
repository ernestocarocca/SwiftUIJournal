//
//  FireBase_ShopingListApp.swift
//  FireBase-ShopingList
//
//  Created by Ernesto Carocca on 2023-01-03.
//

import SwiftUI
import Firebase

@main
struct FireBase_ShopingListApp: App {
    init(){
        FireBase.configured
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
