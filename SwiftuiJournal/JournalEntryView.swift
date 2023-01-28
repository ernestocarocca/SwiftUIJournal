import SwiftUI

struct JournalEntryView: View {
   // var journal : Journal
    @EnvironmentObject var journal : Journal
    var entry : JournalEntry? = nil
    @State var content : String = "Idag ..."
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            TextEditor(text: $content)
                .onTapGesture {
                    clearText()
                }
            
        }
        .onAppear() {
            setContent()
        }
        .navigationBarItems(trailing: Button("Save") {
            saveEntry()
            presentationMode.wrappedValue.dismiss()
        })
        
    }
    
    private func clearText() {
        if entry == nil {
            content = ""
        }
        
    }
    
    private func setContent() {
        if let entry = entry {
            content = entry.content
        }
    }
    
    private func saveEntry() {
        if let entry = entry {
            // uppdatera en gammal anteckning
            journal.update(entry: entry, with: content)
            
        } else {
            // skapa en ny dagboksanteckning
            let entry = JournalEntry(content: content)
            journal.entries.append(entry)
        }
    }
}
