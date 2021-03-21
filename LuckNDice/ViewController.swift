//
//  ViewController.swift
//  LuckNDice
//
//  Created by Atin Agnihotri on 20/03/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let diceFaces = [ #imageLiteral(resourceName: "DiceOne") ,#imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    var leftDiceNumber = 0
    var rightDiceNumber = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageViewOne.image = #imageLiteral(resourceName: "DiceFour")
        diceImageViewOne.alpha = 0.5
        
        diceImageViewTwo.image = #imageLiteral(resourceName: "DiceSix")
        diceImageViewTwo.alpha = 0.5
    }


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        print("Roll Button got tapped!")
        
        leftDiceNumber = Int.random(in: 0...5)
        rightDiceNumber = Int.random(in: 0...5)
        
        
        if (diceImageViewOne.alpha != 1 || diceImageViewTwo.alpha != 1) {
            diceImageViewOne.alpha = 1
            diceImageViewTwo.alpha = 1
        }
        
        print("Left Dice face set at \(leftDiceNumber + 1)")
        print("Right Dice face set at \(rightDiceNumber + 1)")
        diceImageViewOne.image = diceFaces[leftDiceNumber]
        diceImageViewTwo.image = diceFaces[rightDiceNumber]
        
        // Could refactor with diceImageViewOne.image = diceFaces.randomElement() as well
            
    }
    
    
    
    
}

