//
//  BMIBrain.swift
//  BMI Calculator
//
//  Created by Nick on 27.04.2020.
//  Copyright © 2020 Nick Marchuk. All rights reserved.
//

import UIKit

struct BMIBrain {
    
    var bmi:BMI?
    
    mutating func getBmi(weight: Float, height: Float) {
        let bmiResult = weight / pow(height, 2)
        switch bmiResult {
        case ...18.5:
            bmi = BMI(bmi: bmiResult, img: #imageLiteral(resourceName: "underweight"))
        case 18.6...24.9:
            bmi = BMI(bmi: bmiResult, img: #imageLiteral(resourceName: "normal"))
        case 25...29.9:
            bmi = BMI(bmi: bmiResult, img: #imageLiteral(resourceName: "overweight"))
        case 30...34.9:
            bmi = BMI(bmi: bmiResult, img: #imageLiteral(resourceName: "obese"))
        case 35...:
            bmi = BMI(bmi: bmiResult, img: #imageLiteral(resourceName: "extremlyObese"))
        default:
            print("Error")
        }
    }
    
    func sendBmi() -> String{
        return String(format: "%.1f", bmi?.bmi ?? 0.0)
    }
    
    func getImage() -> UIImage{
        return bmi?.img ?? #imageLiteral(resourceName: "normal")
    }
    
}
