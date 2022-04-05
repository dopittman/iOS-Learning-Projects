//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by David Pittman on 4/4/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height:Float, weight: Float) {
        let bmiValue =  weight / pow(height, 2)
        if(bmiValue < 18.5){
            bmi = BMI(value: bmiValue, advice:"Eat more snacks.", color: UIColor.blue)
        } else if(bmiValue > 18.5 && bmiValue < 25){
            bmi = BMI(value: bmiValue, advice:"You're where you should be!", color: UIColor.green)
        } else if(bmiValue > 25){
            bmi = BMI(value: bmiValue, advice:"You need a few less snacks.", color: UIColor.red)
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f",bmi?.value ?? 0.0)

    }
}

