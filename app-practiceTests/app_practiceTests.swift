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
    var assignment2ViewForTest : ViewController2 = ViewController2()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    //TESTING StartScreenViewController
    
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
    //TESTING Assignment2ViewController
    
    //Test noRepeats with various strings
    
    func testNoRepeats() {
        //Normal String
        let Normal = "memory"
        XCTAssertEqual("e", assignment2ViewForTest.noRepeats(text: Normal))
        
        //Capital Letters
        let Capital = "TeEteR"
        XCTAssertEqual("r", assignment2ViewForTest.noRepeats(text: Capital))
        
        //Spaces
        let Spaces = "My name is Felicia"
        XCTAssertEqual("y", assignment2ViewForTest.noRepeats(text: Spaces))
    
        //Numbers
        let Numbers = "1233412"
        XCTAssertEqual("4", assignment2ViewForTest.noRepeats(text: Numbers))
        
        //Symbols
        let Symbols = "!@#!@#$$%^^&&*("
        XCTAssertEqual("%", assignment2ViewForTest.noRepeats(text: Symbols))
    }
    
    //Test removeCharacter with various strings
    func testremoveCharacter(){
        //Normal String
        let normalCharacter = "e"
        let normalString = "hello my name is Felicia"
        XCTAssertEqual("hllo my nam is Flicia", assignment2ViewForTest.removeCharacter(letter: normalCharacter, text: normalString))
        
        //Capital Letter
        let capitalCharacter = "A"
        let capitalString = "I like to eat Apples"
        XCTAssertEqual("I like to et pples", assignment2ViewForTest.removeCharacter(letter: capitalCharacter, text: capitalString))
        
        //Number
        let number = "1"
        let numberString = "I have 11 dogs"
        XCTAssertEqual("I have  dogs", assignment2ViewForTest.removeCharacter(letter: number, text: numberString))
        
        //Symbols
        let symbol = "!"
        let symbolString = "I love dogs!!!"
        XCTAssertEqual("I love dogs", assignment2ViewForTest.removeCharacter(letter: symbol, text: symbolString))
    }
    
    //Test reverse with various strings
    func testReverse() {
        //Normal String
        let Normal = "My name is Felicia"
        XCTAssertEqual("aicileF si eman yM", assignment2ViewForTest.reverse(text: Normal))
        
        //Numbers
        let Numbers = "1234567890"
        XCTAssertEqual("0987654321", assignment2ViewForTest.reverse(text: Numbers))
        
        //Symbols
        let Symbols = "!@#$%^&*()"
        XCTAssertEqual(")(*&^%$#@!", assignment2ViewForTest.reverse(text: Symbols))
    }
}

