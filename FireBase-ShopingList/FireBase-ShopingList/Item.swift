//
//  Item.swift
//  FireBase-ShopingList
//
//  Created by Ernesto Carocca on 2023-01-03.
//

import Foundation


struct Item : Codable, Identifiable {
    var id = UUID()
    
    var name : String
    var catergory : String = " "
    var done : Bool = false
}
