//
//  MathViewController.swift
//  app-practice
//
//  Created by Felicia Hou on 7/19/18.
//  Copyright © 2018 Felicia Hou. All rights reserved.
//

import UIKit

protocol mathDelegate {
    func add(number1: Int, number2: Int)
    func sub(number1: Int, number2: Int)
    func mul(number1: Int, number2: Int)
    func div(number1: Int, number2: Int)
}

class MathViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    
    var delegate: mathDelegate?
    var tagNumber: Int = Int()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Actions
    @IBAction func calculateButton(_ sender: UIButton) {
        if self.delegate != nil { //MOVE THIS IF STATEMENT TO VIEWDIDLOAD()
            if firstNumber.text != "" && secondNumber.text != "" {
                let number1 = Int(firstNumber.text!)
                let number2 = Int(secondNumber.text!)
            
            switch tagNumber {
                case 0:
                    self.delegate?.add(number1: number1!, number2: number2!)
                    break
                
                case 1:
                    self.delegate?.mul(number1: number1!, number2: number2!)
                    break
                
                case 2:
                    self.delegate?.sub(number1: number1!, number2: number2!)
                    break
                
                case 3:
                    self.delegate?.div(number1: number1!, number2: number2!)
                    break
                
                default:
                    break
                }
           
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
}
    



