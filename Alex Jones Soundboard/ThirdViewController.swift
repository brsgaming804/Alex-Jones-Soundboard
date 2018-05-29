//
//  ThirdViewController.swift
//  Alex Jones Soundboard
//
//  Created by Ben Stahl on 3/15/18.
//  Copyright © 2018 Ben Stahl. All rights reserved.
//

import UIKit
import AVFoundation

//MARK: - Audio Players

var demonHillaryPlayer = AVAudioPlayer()
var poolCrapPlayer = AVAudioPlayer()

//MARK: - Booleans

var rantChecksums: [Bool] = [false,false]

var demonHillaryIsPlaying = false

//MARK: - Paths

let demonHillaryPath = Bundle.main.path(forResource: "demon_hillary", ofType: "mp3")
let poolCrapPath = Bundle.main.path(forResource: "crapping_in_the_pool", ofType: "mp3")

class ThirdViewController: UIViewController {

    @IBOutlet weak var demonHillary: UIButton!
    @IBOutlet weak var poolCrapButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        demonHillary.layer.cornerRadius = 8
        poolCrapButton.layer.cornerRadius = 8
        
        do {
            try demonHillaryPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: demonHillaryPath!))
        } catch {
            //Error: File not loaded.
        }
       
        do {
            try poolCrapPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: poolCrapPath!))
        } catch {
            //Error: File not loaded.
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func demonHillary(_ sender: UIButton) {
        if rantChecksums[0] == false {
            demonHillaryPlayer.play()
            rantChecksums[0] = true
            demonHillary.setTitle("Demon Hillary", for: UIControlState.normal)
        } else if rantChecksums[0] == true {
            demonHillary.setTitle("Paused", for: UIControlState.normal)
            demonHillaryPlayer.stop()
            rantChecksums[0] = false
        } else {
            demonHillaryPlayer.stop()
            rantChecksums[0] = false
            demonHillary.setTitle("Demon Hillary", for: UIControlState.normal)
        }
    }
    @IBAction func poolCrap(_ sender: UIButton) {
        if rantChecksums[1] == false {
            poolCrapPlayer.play()
            rantChecksums[1] = true
            poolCrapButton.setTitle("Crapping in the Pool", for: UIControlState.normal)
        } else if rantChecksums[1] == true {
            poolCrapButton.setTitle("Paused", for: UIControlState.normal)
            poolCrapPlayer.stop()
            rantChecksums[1] = false
        } else {
            poolCrapPlayer.stop()
            rantChecksums[1] = false
            poolCrapButton.setTitle("Crapping in the Pool", for: UIControlState.normal)
        }
    }
    

}
