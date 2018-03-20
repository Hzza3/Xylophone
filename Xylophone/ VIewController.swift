//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController{
    let fileNames = ["note1","note2","note3","note4","note5","note6","note7"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(soundFile : fileNames[sender.tag - 1])
        
    }
    
    func playSound(soundFile : String){
        
        if let soundURL = Bundle.main.url(forResource: soundFile, withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
    }
    
  
    @IBAction func test(_ sender: UIButton) {
    }
    
    
}

