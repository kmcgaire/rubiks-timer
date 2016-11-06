//
//  FirstViewController.swift
//  rubiks-timer
//
//  Created by Kevin McGaire on 2016-11-06.
//  Copyright © 2016 Kevin McGaire. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!

    var seconds = 0.00
    var timerIsStarted = false
    var timer = Timer()
    var startTime = Date()

    @IBAction func timerButton(_ sender: Any) {
        if timerIsStarted {
            seconds = 0.00
            timer.invalidate()
            timerIsStarted = false
        } else {
            self.startTime = Date()
            timer = Timer.scheduledTimer(timeInterval: 0.02, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            timerIsStarted = true
        }
        
        
    }
    
    func updateTimer() {
        timerLabel.text = "\(String(format: "%.2f", Date().timeIntervalSince(startTime)))"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

