//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
// Package that allows us to tap into the audio visual components in the iPhone

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    //Variable to call audio player
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
      let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
        // Sound URL path
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            // Directory Path of sound file to initialize soundplayer with contents of soundURL
        }
        catch {
            print(error)
            // print any error into console to debug
        }
        audioPlayer.play()
  
    }

}
