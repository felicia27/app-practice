//
//  ViewController.swift
//  app-practice
//
//  Created by Felicia Hou on 7/10/18.
//  Copyright © 2018 Felicia Hou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    var txt = "Enter text!"
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var greetingTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field's user input through delegate callbacks.
        greetingTextField.delegate = self
        showText()
        outputDict()

    }
    
    func showText() {
        greetingLabel.text = txt
    }
    
    func cleanTextFromTextField(text : String)-> String {
        if text != "" {
            return text
        } else {
            return " "
        }
    }
    
    func primeNumbers(num: Int) -> Bool {
        var div = 0
        for x in 1...num {
            if num % x == 0 {
                div += 1
            }
        }
        if div > 2 {
            return false
        } else {
            return true
        }
    }
        
    func primeList(num: Int) -> Array<Int> {
        var primes: [Int] = []
        for x in 2...num {
            if primeNumbers(num: x) {
                primes.append(x)
            }
        }
        return primes
    }
    
    func evenList(num: Int) -> Array<Int> {
        var evens: [Int] = []
        for x in 2...num {
            if x % 2 == 0 {
                evens.append(x)
            }
        }
        return evens
    }
    
    func oddList(num: Int) -> Array<Int> {
        var odds: [Int] = []
        for x in 1...num {
            if x % 2 != 0 {
                odds.append(x)
            }
        }
        return odds
    }

    func createDictionary() -> [String: Array<Int>] {
        var numbers = [String: Array<Int>]()
        numbers["prime"] = primeList(num: 100)
        numbers["even"] = evenList(num: 100)
        numbers["odd"] = oddList(num: 100)
        return numbers
    }
    

    func outputDict() {
        for (key, value) in createDictionary() {
            print("\(key) \t \(value)")
        }
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        greetingLabel.text = "Hello! " + textField.text!
    }
    
    //MARK: Actions
    @IBAction func displayTextField(_ sender: UIButton) {
        
        txt = "Hello! " + greetingTextField.text!
        
        let colors = [UIColor.blue, UIColor.red, UIColor.cyan, UIColor.gray, UIColor.green, UIColor.orange, UIColor.purple, UIColor.yellow]
        
        let randomIndex = Int(arc4random_uniform(UInt32(colors.count)))
        
        self.view.backgroundColor = colors[randomIndex]
        
        showText()
    }
}


