//
//  ViewController.swift
//  Taps
//
//  Created by Spencer Merryman on 8/2/18.
//  Copyright © 2018 Spencer Merryman. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    @IBOutlet weak var fingerIndex: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var thumb: UIButton!
    @IBOutlet weak var index: UIButton!
    @IBOutlet weak var middle: UIButton!
    @IBOutlet weak var ring: UIButton!
    @IBOutlet weak var pinkie: UIButton!
    var round = 1
    var finger = "Index"
    let sequence = [1, 2, 3, 4, 5]

    override func viewDidLoad() {
        updateLabels()
    }
    
    @IBAction func fingerTap() {
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    func nextRound(){
        fingerTap()
    }
    
    func updateLabels() {
        roundLabel.text = String(round)
        fingerIndex.text = String(finger)
    }
    
    @IBAction func resetGame() {
        round = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

