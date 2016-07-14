//
//  ViewController.swift
//  synthesizer
//
//  Created by Jason Post on 13/07/16.
//  Copyright © 2016 Jason Post. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let audioController = AudioController()
    
    @IBOutlet weak var attackSlider: UISlider!
    @IBOutlet weak var decaySlider: UISlider!
    @IBOutlet weak var sustainSlider: UISlider!
    @IBOutlet weak var releaseSlider: UISlider!
    
    
    @IBAction func stopSound() {
        audioController.stop()
    }
    
    @IBAction func startSound() {
        audioController.start()
    }
    
    
    @IBAction func ADSRValueChanged(sender: UISlider) {
        let tag = sender.tag
        let currentValue = Double(sender.value)
        
        switch(tag){
        case 0: audioController.setAttack(currentValue)
        case 1: audioController.setDecay(currentValue)
        case 2: audioController.setSustain(currentValue)
        case 3: audioController.setRelease(currentValue)
        default: print("Something wrong happened.")
        }
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

