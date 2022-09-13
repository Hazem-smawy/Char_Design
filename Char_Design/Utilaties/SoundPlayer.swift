//
//  File.swift
//  Char_Design
//
//  Created by hazem smawy on 04/02/1444 AH.
//

import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?

func playSound(sound:String ,type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        }catch {
            print("Could not play the sound file.")
        }
    }
}
