//
//  ViewController.swift
//  Xylophone - Storyboard
//
//  Created by Danila Bolshakov on 18.07.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: (sender.titleLabel?.text)!)
        sender.titleLabel?.alpha = 0.7
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    sender.alpha = 1.0
                }
    }
    
    func playSound(soundName: String) {
        let urlC = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: urlC!)
        player?.play()
    }
}

