//
//  ViewController.swift
//  virtual-xylophone
//
//  Created by Snigdha Tiwari on 01/09/2025.
//
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        
        sender.alpha = 0.5
        
       
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
     
            sender.alpha = 1.0
        }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
}








