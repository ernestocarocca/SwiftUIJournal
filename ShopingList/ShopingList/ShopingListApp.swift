
import SwiftUI
import Firebase
import FirebaseAuth


@main
struct Firebase_ShoppinglistApp: App {
    
    init() {
        FirebaseApp.configure()
        
     
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
