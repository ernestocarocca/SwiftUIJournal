//
//  ContentView.swift
//  FireBase-ShopingList
//
//  Created by Ernesto Carocca on 2023-01-03.
//

import SwiftUI
import Firebase

struct ContentView: View {
    let db = Firestore.firestore()
    @state var item = [Item]()
   
        
    
    
    
    var body: some View {
        VStack {
            List{
                ForEach(item){ item in
                    Text(item.name)
                    
                }
            }
        }.onAppear(){
            
                 item.append(Item(name: "morot"))
                 item.append(Item(name: "mjölk"))
                 item.append(Item(name: "sirap"))
        }
        .padding()
    }
    
    func saveToFirestore(itemname: String){
        let item = Item(name: itemname)
       // db.collection("items".addDocument(from: item))
        db.collection("items").addDocument(data: ["name": itemname,
                                           "category": "",
                                           "done" : false] )
    }
    func listenToFirestore(){
        db.collection("items").addSnapshotListener{snapshot,err in
            quard let snapshot = snapshot else {return}
            if let err = err {
                printi("Error getting document \(err)")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
