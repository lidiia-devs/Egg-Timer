//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimer = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var secondsRemaining = 60
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle! //Soft, Medium, Hard
        
        secondsRemaining = eggTimer[hardness]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
        @objc func updateCounter() {
            //example functionality
            if secondsRemaining > 0 {
                print("\(secondsRemaining) seconds")
                secondsRemaining -= 1
            }
                }

   
    }
    
    

//    override func viewDidLoad() {
//        super.viewDidLoad()

   
    //}

