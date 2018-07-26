//
//  XYPointViewController.swift
//  app-practice
//
//  Created by Felicia Hou on 7/17/18.
//  Copyright © 2018 Felicia Hou. All rights reserved.
//

import UIKit

class XYPointViewController: UIViewController {
    
    
    //MARK: Properties
    
    @IBOutlet weak var XLabel: UILabel!
    @IBOutlet weak var XTextField: UITextField!
    @IBOutlet weak var YLabel: UILabel!
    @IBOutlet weak var YTextField: UITextField!
    @IBOutlet weak var coordinateLabel: UILabel!
    @IBOutlet weak var Puppy: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    class XYPoint {
        var x: CGFloat
        var y: CGFloat
        
        init(x: CGFloat, y: CGFloat) {
            self.x = x
            self.y = y
        }
    }
    

    
    //MARK: Actions
    
    @IBAction func coordinateButton(_ sender: UIButton) {
        let point = XYPoint(x: 0.0, y: 0.0)
        let screenSize = UIScreen.main.bounds
        let maxScreenWidth = screenSize.width
        let maxScreenHeight = screenSize.height
        
        point.x = CGFloat(Double(XTextField.text!)!)
        point.y = CGFloat(Double(YTextField.text!)!)

        if point.x > maxScreenWidth || point.y > maxScreenHeight{
            coordinateLabel.text = "That is out of bounds!"
        } else {
            Puppy.center = CGPointFromString("{" + XTextField.text! + "," + YTextField.text! + "}")
            var message = "Your coordinate is: " + "(" + XTextField.text!
            message += ", " + YTextField.text! + ")"
            coordinateLabel.text = message
        }
    }
}
