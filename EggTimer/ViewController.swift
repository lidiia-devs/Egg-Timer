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
    
    var timer = Timer()
    @IBOutlet weak var titleLable: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate() // stops and runs from scratch
        
        let hardness = sender.currentTitle! //Soft, Medium, Hard
        
         secondsRemaining = eggTimer[hardness]!
       
         timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        //example functionality
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds")
            secondsRemaining -= 1
        } else {
            titleLable.text = "DONE!"
            timer.invalidate()
        }
    }
    
    
}



//    override func viewDidLoad() {
//        super.viewDidLoad()


//}

