//
//  Assignment2ViewController.swift
//  app-practice
//
//  Created by Felicia Hou on 7/11/18.
//  Copyright © 2018 Felicia Hou. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var noRepeatLabel: UILabel!
    @IBOutlet weak var noRepeatTextField: UITextField!
    @IBOutlet weak var removeLabel: UILabel!
    @IBOutlet weak var removeCharacterLabel: UILabel!
    @IBOutlet weak var removeCharacterTextField: UITextField!
    @IBOutlet weak var removeStringLabel: UILabel!
    @IBOutlet weak var removeStringTextField: UITextField!
    @IBOutlet weak var reverseLabel: UILabel!
    @IBOutlet weak var reverseTextField: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func noRepeats(text :String) -> Character {
        let string = text
        var letters: [Character] = []
        for x in string {
            letters.append(Character(String(x).lowercased()))
        }
        let countedSet = NSCountedSet(array: letters)
        var uniques = letters.filter {countedSet.count(for: $0) == 1}
        
        return (uniques[0])
    }
    
    func removeCharacter(letter: String, text :String) -> String {
    
        let character = letter
        let word = text
        let newString = word.replacingOccurrences(of: character, with: "")
        let newString2 = newString.replacingOccurrences(of: character.uppercased(), with: "")
        let newString3 = newString2.replacingOccurrences(of: character.lowercased(), with: "" )
        
        return (newString3)
    }
    
    func reverse(text :String) -> String {
        let normal = text
        var reverse = ""
        
        for character in normal {
            let char = "\(character)"
            reverse = char + reverse
        }
        return(reverse)
    }
    
 
    //MARK: Actions
    
    @IBAction func noRepeatButton(_ sender: UIButton) {
        if noRepeatTextField.text == "" {
            noRepeatLabel.text = "Please enter a valid string!"
        } else {
            let letter = noRepeats(text: noRepeatTextField.text!)
            noRepeatLabel.text = String(letter)
        }
    }
    
    @IBAction func removeButton(_ sender: UIButton) {
        if removeCharacterTextField.text! == "" || removeStringTextField.text! == "" || (removeCharacterTextField.text?.count)! > 1 {
            removeLabel.text = "Please enter a valid character(only one) and string!"
        } else {
            let removedWord = removeCharacter(letter: removeCharacterTextField.text!, text: removeStringTextField.text!)
            removeLabel.text = String(removedWord)
        }
    }
    
    @IBAction func reverseButton(_ sender: UIButton) {
        if reverseTextField.text == "" {
            reverseLabel.text = "Please enter a valid string!"
        } else {
            let reverseWord = reverse(text: reverseTextField.text!)
            reverseLabel.text = String(reverseWord)
        }
    }
}


