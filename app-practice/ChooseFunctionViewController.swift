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
    
   // weak var delegate: mathDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    //    self.delegate = self
      //  delegate = self
        


        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let vc : MathViewController = segue.destination as! MathViewController
            vc.delegate = self

    }
    //HOW TO CHOOSE DIFFERENT FUNCTION BASED ON BUTTONS
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
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
        
        
        switch sender.tag {
            
        case 0:
           MathViewController().tagNumber = "0"
            performSegue(withIdentifier: "calculateSegue", sender: sender.tag)
            

        case 1:
            performSegue(withIdentifier: "calculateSegue", sender: sender.tag)
            MathViewController().tagNumber = "1"
        case 2:
            performSegue(withIdentifier: "calculateSegue", sender: sender.tag)
            MathViewController().tagNumber = "2"
        case 3:
            performSegue(withIdentifier: "calculateSegue", sender: sender.tag)
            MathViewController().tagNumber = "3"

            
        default:
            break
        }
    }
    

    
}
