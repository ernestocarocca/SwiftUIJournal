//
//  TwoStringsTest.swift
//  UnitTestTests
//
//  Created by Ernesto Carocca on 2023-02-02.
//

import Foundation
import XCTest
@testable import UnitTest
class TwoStringsTest : XCTestCase {
    
    
    
    
    
    
    func testCanCancatonate(){
        //given
        let twoString = TwoString(one: "google.com/", two: "images")
        let twoStringsNumber = TwoString(one: "1234", two: "56")
        let twoStringsEmpty = TwoString(one: "", two: "")
        //when
        let result1  = twoString.concatonate()
        let result2  = twoStringsNumber.concatonate()
        let result3  = twoStringsNumber.concatonate()
        
        
        //then
        XCTAssert(result1)
    }
}
