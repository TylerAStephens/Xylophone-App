//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
// Added time-based audiovisual media framework for iOS

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
    //Variable to call audio player
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        //Added path for accessing audio file
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
        // Command for button press to play audio and/or catch errors
    }
    
  

}

