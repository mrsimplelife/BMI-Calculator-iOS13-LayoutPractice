//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightChanged(_ sender: UISlider) {
        heightLabel.text=String(format: "%.2fm", sender.value)
    }
    @IBAction func weightChanged(_ sender: UISlider) {
        weightLabel.text=String(format: "%.0fKg", sender.value)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculateBrain.calculateBMI(heightSlider.value,weightSlider.value)
        performSegue(withIdentifier: "goToResult", sender: self)
        
        //        let secondVC = SecondViewController()
        //        secondVC.bmiValue = String(format: "%.1f", bmi)
        //        present(secondVC, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToResult"{
            (segue.destination as! ResultViewController).calculateBrain = calculateBrain
        }
    }
    
    
    var calculateBrain=CalculateBrain()
}

