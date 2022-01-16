//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    let eggTimes : [String : Int] = ["Soft": 5, "Medium": 7, "Hard": 12]
    var timer = Timer()
    
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        
        let hardness : String? = sender.currentTitle
        var totalTime = 0
        var secondsPassed = 0
        self.ProgressBar.progress = 0

        
        switch hardness {
        case "Soft":
            totalTime = 3
            self.titleLabel.text = "Soft"
            print(eggTimes["Soft"]!)
        case "Medium":
            totalTime = 4
            self.titleLabel.text = "Medium"
            print(eggTimes["Medium"]!)
        case "Hard":
            totalTime = 700
            self.titleLabel.text = "Hard"
            print(eggTimes["Hard"]!)
        default:
            print("Error")
        }
            
        
            
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
                if secondsPassed < totalTime {
                    secondsPassed += 1
                    let percentageProgress = Float(secondsPassed) / Float(totalTime)
                    self.ProgressBar.progress = Float(percentageProgress)

                } else {
                    Timer.invalidate()
                    self.titleLabel.text = "DONE!"
                }
            }
        
    }
    
}
