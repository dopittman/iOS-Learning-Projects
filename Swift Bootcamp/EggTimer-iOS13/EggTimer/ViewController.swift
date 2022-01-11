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
    

    @IBAction func HardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness : String? = sender.currentTitle
        var secondsRemaining = 0
        
        switch hardness {
        case "Soft":
            secondsRemaining = 3
            print(eggTimes["Soft"]!)
        case "Medium":
            secondsRemaining = 410
            print(eggTimes["Medium"]!)
        case "Hard":
            secondsRemaining = 12
            print(eggTimes["Hard"]!)
        default:
            print("Error")
        }
            
        
            
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
                if secondsRemaining > 0 {
                    print ("\(secondsRemaining) seconds")
                    secondsRemaining -= 1
                } else {
                    Timer.invalidate()
                    self.titleLabel.text = "DONE!"
                }
            }
        
    }
    
}
