import SwiftUI

@main
struct SwiftUiJournalApp: App {
    
    @StateObject var journal = Journal()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(journal)
        }
    }
}
