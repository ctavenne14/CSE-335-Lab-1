//
//  SecondViewController.swift
//  ctavenne-Lab1
//
//  Created by Cody Tavenner on 1/24/19.
//  Copyright © 2019 Cody Tavenner. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var wLabel: UILabel!
    @IBOutlet weak var hLabel: UILabel!
    @IBOutlet weak var weightVal: UISlider!
    @IBOutlet weak var heightVal: UISlider!
    @IBOutlet weak var results: UILabel!
    @IBOutlet weak var totalBmi: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func Height(_ sender: UISlider) {
        hLabel.text = "\(heightVal.value)"
        let ht = heightVal.value
        let wt = weightVal.value
        let bmi = (wt/(ht*ht))*703
        totalBmi.text = "\(bmi)"
        if bmi < 18 {
            results.textColor = UIColor.blue
            results.text = "You are underweight"
        }
        else if bmi >= 18 && bmi < 25 {
            results.textColor = UIColor.green
            results.text = "You are normal"
        }
        else if bmi >= 25 && bmi < 30 {
            results.textColor = UIColor.purple
            results.text = "You are pre-obese"
        }
        else if bmi > 30 {
            results.textColor = UIColor.red
            results.text = "You are obese"
        }
    }
    
    @IBAction func Weight(_ sender: UISlider) {
        wLabel.text = "\(weightVal.value)"
        let ht = heightVal.value
        let wt = weightVal.value
        let bmi = (wt/(ht*ht))*703
        totalBmi.text = "\(bmi)"
        if bmi < 18 {
            results.textColor = UIColor.blue
            results.text = "You are underweight"
        }
        else if bmi >= 18 && bmi < 25 {
            results.textColor = UIColor.green
            results.text = "You are normal"
        }
        else if bmi >= 25 && bmi < 30 {
            results.textColor = UIColor.purple
            results.text = "You are pre-obese"
        }
        else if bmi > 30 {
            results.textColor = UIColor.red
            results.text = "You are obese"
        }
    }
    
}
