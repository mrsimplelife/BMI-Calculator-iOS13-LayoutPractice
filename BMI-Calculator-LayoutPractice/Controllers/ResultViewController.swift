//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by 박윤철 on 2022/07/04.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var calculateBrain:CalculateBrain?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = calculateBrain?.getBMI()
        adviceLabel.text = calculateBrain?.getAdvice()
        view.backgroundColor = calculateBrain?.getColor()
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    

}
