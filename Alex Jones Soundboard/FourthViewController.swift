//
//  FourthViewController.swift
//  Alex Jones Soundboard
//
//  Created by Ben Stahl on 3/15/18.
//  Copyright © 2018 Ben Stahl. All rights reserved.
//

import UIKit
import AVFoundation

//MARK: - Audio Players

var players: [AVAudioPlayer] = []
var trashPlayer = AVAudioPlayer()
var stfuPlayer = AVAudioPlayer()
var scumPlayer = AVAudioPlayer()
var fascistPlayer = AVAudioPlayer()
var authPlayer = AVAudioPlayer()

//MARK: - Booleans

var insultChecksums: [Bool] = [false,false,false,false,false]

/*var trashIsPlaying = false
var stfuIsPlaying = false
var scumIsPlaying = false
var fascistIsPlaying = false
var authIsPlaying = false */

//MARK: - Paths

let trashPath = Bundle.main.path(forResource: "piece_of_trash", ofType: "mp3")
let stfuPath = Bundle.main.path(forResource: "shut_your_mouth", ofType: "mp3")
let scumPath = Bundle.main.path(forResource: "scum", ofType: "mp3")
let fascistPath = Bundle.main.path(forResource: "youre_a_flaming_fascist", ofType: "mp3")
let authPath = Bundle.main.path(forResource: "authoritarian", ofType: "mp3")



class FourthViewController: UIViewController {

    @IBOutlet weak var trashButton: UIButton!
    @IBOutlet weak var stfuButton: UIButton!
    @IBOutlet weak var scumButton: UIButton!
    @IBOutlet weak var fascistButton: UIButton!
    @IBOutlet weak var authButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trashButton.layer.cornerRadius = 8
        stfuButton.layer.cornerRadius = 8
        scumButton.layer.cornerRadius = 8
        fascistButton.layer.cornerRadius = 8
        authButton.layer.cornerRadius = 8
        
        do {
            try trashPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: trashPath!))
        } catch {
            //Error: File not loaded.
        }
        do {
            try stfuPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: stfuPath!))
        } catch {
            //Error: File not loaded.
        }
        do {
            try scumPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: scumPath!))
        } catch {
            //Error: File not loaded.
        }
        do {
            try fascistPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: fascistPath!))
        } catch {
            //Error: File not loaded.
        }
        do {
            try authPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: authPath!))
        } catch {
            //Error: File not loaded.
        }
        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func trash(_ sender: UIButton) {
        if insultChecksums[0] == false {
            trashPlayer.play()
            insultChecksums[0] = true
            trashButton.setTitle("Piece of Trash", for: UIControlState.normal)
        } else if insultChecksums[0] == true {
            trashButton.setTitle("Paused", for: UIControlState.normal)
            trashPlayer.stop()
            insultChecksums[0] = false
        } else {
            trashPlayer.stop()
            insultChecksums[0] = false
            trashButton.setTitle("Piece of Trash", for: UIControlState.normal)
        }
    }
    @IBAction func stfu(_ sender: UIButton) {
        if insultChecksums[1] == false {
            stfuPlayer.play()
            insultChecksums[1] = true
            stfuButton.setTitle("Shut Your Mouth", for: UIControlState.normal)
        } else if insultChecksums[1] == true {
            stfuButton.setTitle("Paused", for: UIControlState.normal)
            stfuPlayer.stop()
            insultChecksums[1] = false
        } else {
            stfuPlayer.stop()
            insultChecksums[1] = false
            stfuButton.setTitle("Shut Your Mouth", for: UIControlState.normal)
        }
    }
    
    @IBAction func scum(_ sender: UIButton) {
        if insultChecksums[2] == false {
            scumPlayer.play()
            insultChecksums[2] = true
            scumButton.setTitle("Scum", for: UIControlState.normal)
        } else if insultChecksums[2] == true {
            scumButton.setTitle("Paused", for: UIControlState.normal)
            scumPlayer.stop()
            insultChecksums[2] = false
        } else {
            scumPlayer.stop()
            insultChecksums[2] = false
            scumButton.setTitle("Scum", for: UIControlState.normal)
        }
    }
    @IBAction func fascist(_ sender: Any) {
        if insultChecksums[3] == false {
            fascistPlayer.play()
            insultChecksums[3] = true
            fascistButton.setTitle("Flaming Fascist", for: UIControlState.normal)
        } else if insultChecksums[3] == true {
            fascistButton.setTitle("Paused", for: UIControlState.normal)
            fascistPlayer.stop()
            insultChecksums[3] = false
        } else {
            fascistPlayer.stop()
            insultChecksums[3] = false
            fascistButton.setTitle("Flaming Fascist", for: UIControlState.normal)
        }
    }
    @IBAction func authoritarian(_ sender: UIButton) {
        if insultChecksums[4] == false {
            authPlayer.play()
            insultChecksums[4] = true
            authButton.setTitle("Authoritarian", for: UIControlState.normal)
        } else if insultChecksums[4] == true {
            authButton.setTitle("Paused", for: UIControlState.normal)
            authPlayer.stop()
            insultChecksums[4] = false
        } else {
            authPlayer.stop()
            insultChecksums[4] = false
            authButton.setTitle("Authoritarian", for: UIControlState.normal)
        }
    }

    
    
}
