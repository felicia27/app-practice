//
//  MathViewController.swift
//  app-practice
//
//  Created by Felicia Hou on 7/19/18.
//  Copyright © 2018 Felicia Hou. All rights reserved.
//

import UIKit

@objc protocol mathDelegate: AnyObject {
    @objc optional func add(number1: Int, number2: Int)
   // @objc optional func sub(number1: Int, number2: Int)
   // @objc optional func mul(number1: Int, number2: Int)
    //@objc optional func div(number1: Int, number2: Int)
}

class MathViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!


    
    weak var delegate: mathDelegate?

 
    

    override func viewDidLoad(){
        super.viewDidLoad()
        
        

       // ChooseFunctionViewController.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    
    @IBAction func calculateButton(_ sender: UIButton) {


       // if firstNumber.text != ""  && secondNumber.text != "" {
            
            //self.delegate?.add!(number1: Int(firstNumber.text!)!, number2: Int(secondNumber.text!)!)
            //present(UIViewController(), animated: true, completion: nil)
            dismiss(animated: true, completion: nil)
            // delegate?.div!(number1: Int(firstNumber.text!)!, number2: Int(secondNumber.text!)!)
            // delegate?.mul!(number1: Int(firstNumber.text!)!, number2: Int(secondNumber.text!)!)
            //delegate?.sub!(number1: Int(firstNumber.text!)!, number2: Int(secondNumber.text!)!)
            
            
          //  self.navigationController?.popViewController(animated: true)
      //  }
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
