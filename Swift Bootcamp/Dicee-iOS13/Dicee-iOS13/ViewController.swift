//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // @IBOutlet lets me reference a UI Element
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
/*
    Had to use ' diceImageView1.image = #imageLiteral(" '
    to get the image literal to pop up. Once this was typed an image box was created and I could import an image from the asset folder.
    #imageLiteral(resourceName: "DiceFour")
 */
        // Who.What = Value
        diceImageViewOne.image = UIImage(named:"DiceOne")
        diceImageViewOne.alpha = 0.5
        diceImageViewTwo.image = UIImage(named:"DiceOne")

    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // String Interpolation Example
        print("Hello \(2+3) World!")
        let diceArray = [UIImage(named:"DiceOne"), UIImage(named:"DiceTwo"),UIImage(named:"DiceThree"),UIImage(named:"DiceFour"),UIImage(named:"DiceFive"),UIImage(named:"DiceSix")]
        
        
        diceImageViewOne.image = diceArray[Int.random(in: 0...5)]
        diceImageViewTwo.image = diceArray[Int.random(in: 0...5)]

        
    }
    
}

