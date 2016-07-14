//
//  audioController.swift
//  synthesizer
//
//  Created by Jason Post on 13/07/16.
//  Copyright © 2016 Jason Post. All rights reserved.
//

import Foundation
import AudioKit

class AudioController {
    
    var osc = AKOscillator()

    var adsr: AKAmplitudeEnvelope
    
    var attack: Double = 1.0
    var decay: Double = 1.0
    var sustain: Double = 1.0
    var release: Double = 1.0

    
    var mixer: AKMixer
    
    
    init(){
        
        osc.frequency = 440
        osc.start()
        
        adsr = AKAmplitudeEnvelope(osc, attackDuration: attack, decayDuration: decay, sustainLevel: sustain, releaseDuration: release)
    
        
        mixer = AKMixer(adsr)
        mixer.volume = 0.5
        AudioKit.output = mixer
        AudioKit.start()
        
        
        
    }

    
    func start(){
        
        adsr.start()
        
    }

    func stop(){
        adsr.stop()
    }
    
    func setAttack(attack: Double){
        
        self.attack = attack
        adsr.attackDuration = attack
    }
    
    func setDecay(decay: Double){
        self.decay = decay
        adsr.decayDuration = decay
    }
    
    func setSustain(sustain: Double){
        self.sustain = sustain
        adsr.sustainLevel = sustain
    }
    
    func setRelease(release: Double){
        self.release = release
        adsr.releaseDuration = release
    }
    
    
}
    
    
