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
    
    var audioPlayer : AVAudioPlayer!
    // Variable to call audio player
    var selectedSoundFileName : String = ""
    // Declared here to make global variable to prevent any scope issues
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    // Array of sound files
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag - 1]
        // sender.tag to pick out selected file from tag of button pressed
        // - 1 used in order to pick from proper order in array
        playSound()
    }

    
    func playSound() {
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
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
