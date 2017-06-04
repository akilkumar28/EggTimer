//
//  ViewController.swift
//  EggTimer
//
//  Created by AKIL KUMAR THOTA on 6/2/17.
//  Copyright © 2017 Akil Kumar Thota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayText: UILabel!
    
    var timer = Timer()
    var time = 210
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayText.text = String(time)
        
    }
    @IBAction func playPrssd(_ sender: Any) {
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeRunning), userInfo: nil, repeats: true)
        
    }
    
    func timeRunning() {
        
        if time >= 0 {
            displayText.text = String(time)
            time -= 1
        } else {
            print("invalidated")
            timer.invalidate()
        }
    }
    @IBAction func pausePrssd(_ sender: Any) {
        
        
        timer.invalidate()
        
        
    }
    @IBAction func incrTenPrssd(_ sender: Any) {
        
        time += 10
        displayText.text = String(time)
        
    }
    
    @IBAction func decrTenPrssd(_ sender: Any) {
        
        if time > 10 {
            time -= 10
            displayText.text = String(time)
        }
        
    }
    @IBAction func resetPrssd(_ sender: Any) {
        
        time = 210
        displayText.text = String(210)
    }
}

