//
//  ViewController.swift
//  YouTubePlayerExample
//
//  Created by Giles Van Gruisen on 1/31/15.
//  Copyright (c) 2015 Giles Van Gruisen. All rights reserved.
//

import UIKit
import YouTubePlayer

class ViewController: UIViewController {

    @IBOutlet var playerView: YouTubePlayerView!
    @IBOutlet var playButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func play(_ sender: UIButton) {
        if playerView.ready {
            if playerView.playerState != YouTubePlayerState.Playing {
                playerView.play()
                playButton.setTitle("Pause", for: UIControlState())
            } else {
                playerView.pause()
                playButton.setTitle("Play", for: UIControlState())
            }
        }
    }

    @IBAction func prev(_ sender: UIButton) {
        playerView.previousVideo()
    }

    @IBAction func next(_ sender: UIButton) {
        playerView.nextVideo()
      
    }

    @IBAction func loadVideo(_ sender: UIButton) {
        playerView.playerVars = ["playsinline": "1" as AnyObject]
        playerView.loadVideoID("p_OofgvPFYg")
    }

    @IBAction func loadPlaylist(_ sender: UIButton) {
        playerView.loadPlaylistID("PLNimSq2k6r44PRXh_Sy0wcn4CoiMTIuBx")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

