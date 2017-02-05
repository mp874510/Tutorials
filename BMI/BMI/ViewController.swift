//
//  ViewController.swift
//  BMI
//
//  Created by Matt Porter on 1/16/17.
//  Copyright © 2017 Matt Porter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var weight : Double?
    var height : Double?
    
    var bmi : Double? {
        get {
            if(weight != nil && height != nil) {
                return weight! / (height! * height!)
            } else {
                return nil
            }
        }
    }
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func drawUI() {
        if let bmi = self.bmi {
            self.bmiLabel.text = String(format: "%4.1f",bmi)
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        func convert(number : String) -> Double? {
            return NumberFormatter().number(from: number)?.doubleValue
        }
        
        guard let text = textField.text else {
            return
        }
        
        switch(textField) {
            case heightTextField:
                self.height = convert(number: text)
            case weightTextField:
                self.weight = convert(number: text)
            default:
                print("Error updating UI")
        }
        
        drawUI()
    }
    
    
    
    
    
    
    
    
    
    


}

