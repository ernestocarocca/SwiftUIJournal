import SwiftUI




struct ShoppingListView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
//    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true) ],
//                 //predicate: NSPredicate(format: "done == %d" , true)
//                  predicate: NSPredicate(format: "name BEGINSWITH %@ ", "mo")
//    )
    @FetchRequest
    var items : FetchedResults<Item>
    
    init(filter: String) {
        if filter == "" {
           _items = FetchRequest<Item>(
                sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)]
           )
        } else {
            _items = FetchRequest<Item>(
                sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
                predicate: NSPredicate(format: "name BEGINSWITH[c] %@", filter)
            )
        }
    }
    
    var body: some View {
        List {
            ForEach(items) { item in
                HStack {
                    if let name = item.name {
                        Text(name)
                    }
                    Spacer()
                    Button(action: {
                        toggle(item: item)
                    }) {
                        Image(systemName: item.done ? "checkmark.square" : "square")
                    }
                }
            }
            .onDelete(perform: deleteItems)
        }
    }
    
    func toggle(item: Item) {
        item.done.toggle()
        
        do {
            try viewContext.save()
        } catch {
            print("Error updating item")
        }
    }
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            //offsets.map { items[$0] }.forEach(viewContext.delete)
            
            for index in offsets {
                let item = items[index]
                viewContext.delete(item)
            }

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
    
    
}

//struct ShoppingListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ShoppingListView()
//    }
//}
