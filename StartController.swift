//
//  StartController.swift
//  Shmick And Shmorty
//
//  Created by Shiv Kalola on 4/10/16.
//  Copyright © 2016 Nobel Apps. All rights reserved.
//

import UIKit
import AVFoundation
import SpriteKit
import GameKit


class StartController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet var logo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let audioPath = NSBundle.mainBundle().pathForResource("theme", ofType: "mp3")!
        
        do {
           
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            
            player.play()
            
            player.numberOfLoops = -1
            
        } catch {
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

