//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimer = ["Soft": 5, "Medium": 8, "Hard": 12]
    
//    let softTime = 5
//    let mediumTime = 8
//    let hardTime = 12
    

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        let result = print(eggTimer[hardness])
        
        print(result)
        
//        switch hardness {
//        case "Soft":
//            print(eggTimer["Soft"])
//        case "Medium":
//            print(eggTimer["Medium"])
//        case "Hard":
//            print(eggTimer["Hard"])
//        default :
//            print("Error")
//        }
    }
    
}
