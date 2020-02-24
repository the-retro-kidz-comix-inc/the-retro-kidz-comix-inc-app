//
//  ViewController.swift
//  The Retro Kidz Comix inc.
//
//  Created by Michael Spady on 2020-01-07.
//  Copyright © 2020 The Retro Kidz Comix inc. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
 
    @IBOutlet weak var playVideo: UIButton!
    @IBAction func playVideo(_ sender: UIButton) {
           guard let url = URL(string: "file:///Users/Mike%201/Desktop/Alex's%20App/hippymant.mp4") else {
               return
           }
           // Create an AVPlayer, passing it the HTTP Live Streaming URL.
           let player = AVPlayer(url: url)

           // Create a new AVPlayerViewController and pass it a reference to the player.
           let controller = AVPlayerViewController()
           controller.player = player

           // Modally present the player and call the player's play() method when complete.
           present(controller, animated: true) {
               player.play()
           }
       }


    
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

}
    







