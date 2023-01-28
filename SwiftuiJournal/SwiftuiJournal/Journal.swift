import Foundation


class Journal : ObservableObject {
    @Published var entries = [JournalEntry]()
    
    
    init() {
        addMockData()
    }
    
    func addMockData() {
        entries.append(JournalEntry(content: "Åt mat"))
        entries.append(JournalEntry(content: "Sov"))
        entries.append(JournalEntry(content: "Programmerade"))
        entries.append(JournalEntry(content: "Badade"))
    }
    
    func update(entry: JournalEntry, with content: String) {
        if let index = entries.firstIndex(of: entry) {
            entries[index].content = content
        }
    }
}
