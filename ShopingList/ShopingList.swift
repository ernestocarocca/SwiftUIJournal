//
//  ShopingList.swift
//  ShopingList
//
//  Created by Ernesto Carocca on 2023-01-07.
//

import Foundation

class ShopingList : ObservableObject {
  @Published var shopingListArray = [Item]()
    
    
    
    init() {
       addShopingList()
    }
    
    func addShopingList(){
       // var shopingListArray : [Item] = []
        shopingListArray.append(Item ("Åt mat"))
        var list3 = [Item(name: "morot")]
        var list4 = [Item(name: "banan")]
        
     
   
        
    }
    
 
    
}
