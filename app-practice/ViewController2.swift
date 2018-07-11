//
//  ViewController2.swift
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
    @IBOutlet weak var removeTextField: UITextField!
    @IBOutlet weak var reverseLabel: UILabel!
    @IBOutlet weak var reverseTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func noRepeats() -> Character {
        let string = noRepeatTextField.text
        var letters: [Character] = []
        for x in string! {
            letters.append(x)
        }
        let countedSet = NSCountedSet(array: letters)
        var uniques = letters.filter {countedSet.count(for: $0) == 1}
        return (uniques[0])
    }
    
    func removeCharacter() -> String {
        var textArray = removeTextField.text?.components(separatedBy: " ")
        let character = textArray![0]
        let word = textArray![1]
        let newString = word.replacingOccurrences(of: character, with: "")
        let newString2 = newString.replacingOccurrences(of: character.uppercased(), with: "")
        return (newString2)
    }
    func reverse() -> String {
        let normal = reverseTextField.text
        var reverse = ""
        for character in normal! {
            let char = "\(character)"
            reverse = char + reverse
        }
        return(reverse)
    }
    
//    var prime: Array = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
//    var even: Array = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50, 52, 54, 56, 58, 60, 62, 64, 66, 68, 70, 72, 74, 76, 78, 80, 82, 84, 86, 88, 90, 92, 94, 96, 98, 100]
//    var odd: Array = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99]
 

    
    //MARK: Actions
    @IBAction func noRepeatButton(_ sender: UIButton) {
        if noRepeatTextField.text == "" {
            noRepeatLabel.text = "Please enter a valid string!"
        } else { let letter = noRepeats()
        noRepeatLabel.text = String(letter)
        }
    }
    
    @IBAction func removeButton(_ sender: UIButton) {
        if removeTextField.text! == "" || removeTextField.text?.contains(" ") == false {
            removeLabel.text = "Please enter a valid character and string!"
        } else {let removedWord = removeCharacter()
            removeLabel.text = String(removedWord)
        }
    }
    
    @IBAction func reverseButton(_ sender: UIButton) {
        if reverseTextField.text == "" {
            reverseLabel.text = "Please enter a valid string!"
        } else {let reverseWord = reverse()
            reverseLabel.text = String(reverseWord)
        }
    }
}


