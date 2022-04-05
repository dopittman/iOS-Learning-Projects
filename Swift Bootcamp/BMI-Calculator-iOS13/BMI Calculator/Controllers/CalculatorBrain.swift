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
        bmi = BMI(value: bmiValue, advice:String)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f",bmi?.value ?? 0.0)

    }
}

