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
    }
    
    func showText() {
        greetingLabel.text = txt
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


