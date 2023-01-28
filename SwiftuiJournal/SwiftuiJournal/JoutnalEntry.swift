//
//  JoutnalEntry.swift
//  SwiftuiJournal
//
//  Created by Ernesto Carocca on 2022-12-22.
//

import Foundation



struct JournalEntry : Identifiable, Equatable {
    let id = UUID()
    var content : String
    var date : Date = Date()
}















 
