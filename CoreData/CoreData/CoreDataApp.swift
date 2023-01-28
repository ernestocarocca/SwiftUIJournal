//
//  CoreDataApp.swift
//  CoreData
//
//  Created by Ernesto Carocca on 2023-01-12.
//

import SwiftUI

@main
struct CoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
