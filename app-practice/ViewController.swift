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
        outputDict()
        // Handle the text field's user input through delegate callbacks.
        greetingTextField.delegate = self
        showText()
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

    var numbers = ["prime": [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97],
                   "even": [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64, 66, 68, 70, 72, 74, 76, 78, 80, 82, 84, 86, 88, 90, 92, 94, 96, 98, 100],
                   "odd": [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99]]
    func outputDict() {
        for (key, value) in numbers {
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


