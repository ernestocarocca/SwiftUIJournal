//
//  Item.swift
//  ShopingList
//
//  Created by Ernesto Carocca on 2023-01-04.
//

import Foundation
import FirebaseFirestoreSwift
import FirebaseAuth

struct Item :Codable,  Identifiable {
    
    
    @DocumentID  var id: String?
    var name : String
    var category : String = ""
    var done: Bool = false
}


