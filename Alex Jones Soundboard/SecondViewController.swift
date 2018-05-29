//
//  SecondViewController.swift
//  Alex Jones Soundboard
//
//  Created by Ben Stahl on 3/13/18.
//  Copyright © 2018 Ben Stahl. All rights reserved.
//

import UIKit
import AVFoundation


//MARK: - Audio Players
var jabbaPlayer = AVAudioPlayer()
var eatPlayer = AVAudioPlayer()
var fightPlayer = AVAudioPlayer()
var saiyanPlayer = AVAudioPlayer()
var loveItPlayer = AVAudioPlayer()

//MARK: - Booleans

var randomChecksums: [Bool] = [false,false,false,false,false]

var jabbaIsPlaying = false
var eatIsPlaying = false
var fightIsPlaying = false
var saiyanIsPlaying = false
var loveItIsPlaying = false

//MARK: - Paths
let jabbaPath = Bundle.main.path(forResource: "jabba", ofType: "mp3")
let eatPath = Bundle.main.path(forResource: "like-eat", ofType: "mp3")
let fightPath = Bundle.main.path(forResource: "like_fight", ofType: "mp3")
let saiyanPath = Bundle.main.path(forResource: "super_saiyan", ofType: "mp3")
let loveItPath = Bundle.main.path(forResource: "love_it", ofType: "mp3")

class SecondViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var jabbaButton: UIButton!
    @IBOutlet weak var likeEat: UIButton!
    @IBOutlet weak var likeFight: UIButton!
    @IBOutlet weak var saiyanButton: UIButton!
    @IBOutlet weak var loveItButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        jabbaButton.layer.cornerRadius = 8
        likeFight.layer.cornerRadius = 8
        likeEat.layer.cornerRadius = 8
        saiyanButton.layer.cornerRadius = 8
        loveItButton.layer.cornerRadius = 8

        do {
            try eatPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: eatPath!))
        } catch {
            //Error: File not loaded.
        }
        
        do {
            try jabbaPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: jabbaPath!))
        } catch {
            //Error: File not loaded.
        }
        
        do {
            try fightPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: fightPath!))
        } catch {
            //Error: File not loaded.
        }
        
        do {
            try saiyanPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: saiyanPath!))
        } catch {
            //Error: File not loaded.
        }
        do {
            try loveItPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: loveItPath!))
        } catch {
            //Error: File not loaded.
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func jabba(_ sender: UIButton) {
        if randomChecksums[0] == false {
            jabbaPlayer.play()
            randomChecksums[0] = true
            jabbaButton.setTitle("Jabba the Hutt", for: UIControlState.normal)
        }  else if randomChecksums[0] == true {
            jabbaButton.setTitle("Paused", for: UIControlState.normal)
            jabbaPlayer.stop()
            randomChecksums[0] = false
            
        } else {
            jabbaPlayer.stop()
            randomChecksums[0] = false
            jabbaButton.setTitle("Jabba the Hutt", for: UIControlState.normal)
        }
        
    }
    
    @IBAction func likeToEat(_ sender: UIButton) {
        if randomChecksums[1] == false {
            eatPlayer.play()
            randomChecksums[1] = true
            likeEat.setTitle("I like to eat", for: UIControlState.normal)
        }  else if randomChecksums[1] == true {
            likeEat.setTitle("Paused", for: UIControlState.normal)
            eatPlayer.stop()
            randomChecksums[1] = false
            
        } else {
            eatPlayer.stop()
            randomChecksums[1] = false
            likeEat.setTitle("I like to eat", for: UIControlState.normal)
        }
    
    }
    @IBAction func likeToFight(_ sender: UIButton) {
    
        if randomChecksums[2] == false {
            fightPlayer.play()
            randomChecksums[2] = true
            likeFight.setTitle("I like to fight", for: UIControlState.normal)
        }  else if randomChecksums[2] == true {
            likeFight.setTitle("Paused", for: UIControlState.normal)
            fightPlayer.stop()
            randomChecksums[2] = false
        } else {
            fightPlayer.stop()
            randomChecksums[2] = false
            likeFight.setTitle("I like to fight", for: UIControlState.normal)
        }
        
    }
    @IBAction func saiyan(_ sender: UIButton) {
        if randomChecksums[3] == false {
            saiyanPlayer.play()
            randomChecksums[3] = true
            saiyanButton.setTitle("Super Saiyan", for: UIControlState.normal)
        } else if randomChecksums[3] == true {
            saiyanButton.setTitle("Paused", for: UIControlState.normal)
            saiyanPlayer.stop()
            randomChecksums[3] = false
            
        }
        else {
            saiyanPlayer.stop()
            randomChecksums[3] = false
            saiyanButton.setTitle("Super Saiyan", for: UIControlState.normal)
        }
    }
    
    
    @IBAction func loveIt(_ sender: UIButton) {
        if randomChecksums[4] == false {
            loveItPlayer.play()
            randomChecksums[4] = true
            loveItButton.setTitle("I love it", for: UIControlState.normal)
        } else if randomChecksums[4] == true {
            loveItButton.setTitle("Paused", for: UIControlState.normal)
            loveItPlayer.stop()
            randomChecksums[4] = false
            
        } else {
            loveItPlayer.stop()
            randomChecksums[4] = false
            loveItButton.setTitle("I love it", for: UIControlState.normal)
        }
    }
}

