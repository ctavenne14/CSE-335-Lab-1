//
//  ViewController.swift
//  ctavenne-Lab1
//
//  Created by Cody Tavenner on 1/24/19.
//  Copyright © 2019 Cody Tavenner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var bmiResults: UILabel!
    @IBOutlet weak var displayResults: UILabel!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.weight.delegate = self
        self.height.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    // textfield func for the return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.weight.resignFirstResponder()
        self.height.resignFirstResponder()
        return true;
    }
    
    // disappear keyboard when tap somehere else in the view
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }

    @IBAction func getBmi(_ sender: Any) {
            
        let ht: Double? = Double(self.height.text!)
        let wt: Double? = Double(self.weight.text!)
        if ht != nil && wt != nil
        {
        let bmi = (wt!/(ht!*ht!))*703
        
        bmiResults.text = String(bmi)
        
        if bmi < 18 {
            displayResults.textColor = UIColor.blue
            displayResults.text = "You are underweight"
        }
        else if bmi >= 18 && bmi < 25 {
            displayResults.textColor = UIColor.green
            displayResults.text = "You are normal"
        }
        else if bmi >= 25 && bmi < 30 {
            displayResults.textColor = UIColor.purple
            displayResults.text = "You are pre-obese"
        }
        else if bmi > 30 {
            displayResults.textColor = UIColor.red
            displayResults.text = "You are obese"
        }
        
        }else{
            displayResults.text = "Please enter the correct information"
        }
    }
    
}

