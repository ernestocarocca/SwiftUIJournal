//
//  Person.swift
//  SwiftUI-intro
//
//  Created by Ernesto Carocca on 2022-12-20.
//

import Foundation

struct Person : Identifiable{
    var id = UUID()
    
    
    var firstName : String
   var lastName :  String
    
    
    // behövs inte i struct
   // init(firstName: String, lastName: String) {
     //   self.firstName = firstName
       // self.lastName = lastName
    }

