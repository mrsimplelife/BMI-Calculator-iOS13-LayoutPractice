//
//  CalculateBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by 박윤철 on 2022/07/04.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct CalculateBrain{
    var bmi:BMI?
    
    func getBMI() -> String{
        return String(format: "%.1f", bmi?.value ?? 0)
    }
    func getAdvice()->String{
        return bmi?.advice ?? "No advice"
    }
    func getColor()->UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
    mutating func calculateBMI(_ height:Float,_ weight:Float){
        let value=weight/(height*height)
        if value < 18.5{
            bmi = BMI(value: value, advice:  "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) )
        }else if value < 24.9{
            bmi = BMI(value: value, advice:  "Eat more pies!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1) )
        }else{
            bmi = BMI(value: value, advice:  "Eat more pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1) )
        }
    }
    
}
