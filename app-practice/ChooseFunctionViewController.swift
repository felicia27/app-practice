//
//  ChooseFunctionViewController.swift
//  app-practice
//
//  Created by Felicia Hou on 7/19/18.
//  Copyright © 2018 Felicia Hou. All rights reserved.
//

import UIKit

class ChooseFunctionViewController: UIViewController, mathDelegate{
    
    //MARK: Properties
    
    @IBOutlet weak var answerLabel: UILabel!
    var myTag: Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calculateSegue" {
            let vc : MathViewController = segue.destination as! MathViewController
            vc.delegate = self
            vc.tagNumber = myTag
        }
    }

    func add(number1: Int, number2: Int){
        let sum = number1 + number2
        answerLabel.text = String(sum)
    }
        
    func sub(number1: Int, number2: Int){
        let diff = number1 - number2
        answerLabel.text = String(diff)
    }
        
    func mul(number1: Int, number2: Int){
        let product = number1 * number2
        answerLabel.text = String(product)
    }
        
    func div(number1: Int, number2: Int){
        let quotient = number1 / number2
        //account for case of dividing with 0
        answerLabel.text = String(quotient)
    }
    

    @IBAction func operationButtons(_ sender: UIButton) {
        myTag = sender.tag
        performSegue(withIdentifier: "calculateSegue", sender: nil)
    }
}
