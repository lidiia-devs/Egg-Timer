//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimer = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    //MARK: Outlets
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func hardnessSelected(_ sender: UIButton)  {
        
        timer.invalidate() // stops and runs from scratch
        
        let hardness = sender.currentTitle! //Soft, Medium, Hard
        
        totalTime = eggTimer[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        timerLabel.text = hardness
       
         timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        //example functionality
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
           // print(progressBar.progress)
    
        } else {
            playSound()
            timerLabel.text = "DONE!"
            timer.invalidate()
        }
    }
    
    var player: AVAudioPlayer?

    func playSound() {
        guard let path = Bundle.main.path(forResource: "alarm_sound", ofType:"mp3") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch {
            print("There is an issue with this code!")
        }
    }
    
    
}



//    override func viewDidLoad() {
//        super.viewDidLoad()


//}

