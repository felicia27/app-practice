//
//  app_practiceTests.swift
//  app-practiceTests
//
//  Created by Felicia Hou on 7/10/18.
//  Copyright © 2018 Felicia Hou. All rights reserved.
//

import XCTest
@testable import app_practice

class app_practiceTests: XCTestCase {

    var myViewForTest : ViewController = ViewController()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //Test cleanTextFromTextField function with various strings
    func testcleanTextFromTextFieldStrings() {
        //Normal String
        let Normal = "hello!"
        XCTAssertEqual(Normal, myViewForTest.cleanTextFromTextField(text: Normal))
    
        //Empty String (returns space)
        let Empty = ""
        XCTAssertEqual(" ", myViewForTest.cleanTextFromTextField(text: Empty))

        //Numbers
        let Numbers = "1234"
        XCTAssertEqual(Numbers, myViewForTest.cleanTextFromTextField(text: Numbers))
        
        //Symbols
        let Symbols = "!@#$%^&*()"
        XCTAssertEqual(Symbols,  myViewForTest.cleanTextFromTextField(text: Symbols))
    }
    //Test that cleanTextFromTextField function returns a string type
    func testcleanTextFromTextFieldType() {
        let Text = "this is a string"
        var functionText = myViewForTest.cleanTextFromTextField(text: Text)
        XCTAssertTrue(type(of: Text) == type(of: functionText))
    }
}
