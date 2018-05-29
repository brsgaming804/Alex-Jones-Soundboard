//
//  FirstViewController.swift
//  Alex Jones Soundboard
//
//  Created by Ben Stahl on 3/13/18.
//  Copyright © 2018 Ben Stahl. All rights reserved.
//

import UIKit
import AVFoundation

//MARK: - Audio Players

var gayFrogsPlayer = AVAudioPlayer()
var yeet1776Player = AVAudioPlayer()
var corruptThemPlayer = AVAudioPlayer()
var cummingPlayer = AVAudioPlayer()
var humanPlayer = AVAudioPlayer()
var alivePlayer = AVAudioPlayer()
var pioneerPlayer = AVAudioPlayer()
var angryPlayer = AVAudioPlayer()
var explorerPlayer = AVAudioPlayer()

//MARK: - Booleans

var frogIsPlaying = false
var yeet1776Play = false
var corruptThemPlay = false
var cummingIsPlaying = false
var humanIsPlaying = false
var aliveIsPlaying = false
var PioneerIsPlaying = false
var angryIsPlaying = false
var explorerIsPlaying = false

var phraseChecksums: [Bool] = [false,false,false,false,false,false,false,false,false]

//MARK: - Paths

let frogPath = Bundle.main.path(forResource: "gay_frogs", ofType: "mp3")
let yeetPath = Bundle.main.path(forResource: "yeet1776", ofType: "mp3")
let corruptPath = Bundle.main.path(forResource: "corrupt_them_all", ofType: "mp3")
let cummingPath = Bundle.main.path(forResource: "im_cumming", ofType: "mp3")
let humanPath = Bundle.main.path(forResource: "im_a_human", ofType: "mp3")
let alivePath = Bundle.main.path(forResource: "im_alive", ofType: "mp3")
let pioneerPath = Bundle.main.path(forResource: "im_a_pioneer", ofType: "mp3")
let angryPath = Bundle.main.path(forResource: "im_angry", ofType: "mp3")
let explorerPath = Bundle.main.path(forResource: "im_an_explorer", ofType: "mp3")

class FirstViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var frogButton: UIButton!
    @IBOutlet weak var yeet1776Button: UIButton!
    @IBOutlet weak var corruptThemButton: UIButton!
    @IBOutlet weak var cummingButton: UIButton!
    @IBOutlet weak var humanButton: UIButton!
    @IBOutlet weak var aliveButton: UIButton!
    @IBOutlet weak var pioneerButton: UIButton!
    @IBOutlet weak var angryButton: UIButton!
    @IBOutlet weak var explorerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frogButton.layer.cornerRadius = 8
        yeet1776Button.layer.cornerRadius = 8
        corruptThemButton.layer.cornerRadius = 8
        cummingButton.layer.cornerRadius = 8
        humanButton.layer.cornerRadius = 8
        aliveButton.layer.cornerRadius = 8
        pioneerButton.layer.cornerRadius = 8
        angryButton.layer.cornerRadius = 8
        explorerButton.layer.cornerRadius = 8
        do {
            try gayFrogsPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: frogPath!))
        } catch {
            //Error: File not loaded.
        }
        
        do {
            try yeet1776Player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: yeetPath!))
        } catch {
            //Error: File not loaded.
        }
        do
        {
            try corruptThemPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: corruptPath!))
        } catch {
            //Error: File not loaded.
        }
        
        do {
            try cummingPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: cummingPath!))
        } catch {
            //Error: File not loaded.
        }
        
        do {
            try humanPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: humanPath!))
        } catch {
            //Error: File not loaded.
        }
        
        do {
            try alivePlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: alivePath!))
        } catch {
            //Error: File not loaded.
        }
        do {
            try pioneerPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: pioneerPath!))
        } catch {
            //Error: File not loaded.
        }
        do {
            try angryPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: angryPath!))
        } catch {
            //Error: File not loaded.
        }
        do {
            try explorerPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: explorerPath!))
        } catch {
            //Error: File not loaded.
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Actions
    
    @IBAction func GayFrogs(_ sender: UIButton) {
        //gayFrogsPlayer.play()
        if phraseChecksums[0] == false {
            gayFrogsPlayer.play()
            phraseChecksums[0] = true
            frogButton.setTitle("Gay Frogs", for: UIControlState.normal)
        }  else if phraseChecksums[0] == true {
            frogButton.setTitle("Paused", for: UIControlState.normal)
            gayFrogsPlayer.stop()
            phraseChecksums[0] = false
        } else {
            gayFrogsPlayer.pause()
            phraseChecksums[0] = false
            frogButton.setTitle("Gay Frogs", for: UIControlState.normal)
        }
    }
    
    @IBAction func yeet1776(_ sender: UIButton) {
        if phraseChecksums[1] == false {
            yeet1776Player.play()
            phraseChecksums[1] = true
        } else if phraseChecksums[1] == true {
            yeet1776Button.setTitle("Paused", for: UIControlState.normal)
            yeet1776Player.stop()
            phraseChecksums[1] = false
        }  else {
            yeet1776Player.stop()
            phraseChecksums[1] = false
            yeet1776Button.setTitle("1776 will Commence Again", for: UIControlState.normal)
        }
    }

    @IBAction func corruptThem(_ sender: UIButton) {
    
        if phraseChecksums[2] == false {
            corruptThemPlayer.play()
            phraseChecksums[2] = true
            corruptThemButton.setTitle("Corrupt them all", for: UIControlState.normal)
        } else if phraseChecksums[2] == true {
            corruptThemButton.setTitle("Paused", for: UIControlState.normal)
            corruptThemPlayer.stop()
            phraseChecksums[2] = false
        } else {
            corruptThemPlayer.stop()
            phraseChecksums[2] = false
            corruptThemButton.setTitle("Corrupt them all", for: UIControlState.normal)
        }

    
    }
    @IBAction func cumming(_ sender: UIButton) {
        if phraseChecksums[3] == false {
            cummingPlayer.play()
            phraseChecksums[3] = true
            cummingButton.setTitle("Paused", for: UIControlState.normal)
        } else if phraseChecksums[3] == true {
            corruptThemButton.setTitle("Paused", for: UIControlState.normal)
            corruptThemPlayer.stop()
            phraseChecksums[3] = false
        } else {
            cummingPlayer.stop()
            phraseChecksums[3] = false
            cummingButton.setTitle("Paused", for: UIControlState.normal)
        }
    }
    
    @IBAction func human(_ sender: UIButton) {
        if phraseChecksums[4] == false {
            humanPlayer.play()
            phraseChecksums[4] = true
            humanButton.setTitle("I\'m a human", for: UIControlState.normal)
        } else if phraseChecksums[4] == true {
            humanButton.setTitle("Paused", for: UIControlState.normal)
            humanPlayer.stop()
            phraseChecksums[4] = false
        } else {
            humanPlayer.stop()
            phraseChecksums[4] = false
            humanButton.setTitle("I\'m a human", for: UIControlState.normal)
        }
    }
    
    
    
    @IBAction func alive(_ sender: UIButton) {
        if phraseChecksums[5] == false {
            alivePlayer.play()
            phraseChecksums[5] = true
            aliveButton.setTitle("I\'m alive", for: UIControlState.normal)
        } else if phraseChecksums[5] == true {
            aliveButton.setTitle("Paused", for: UIControlState.normal)
            alivePlayer.stop()
            phraseChecksums[5] = false
        } else {
            alivePlayer.stop()
            phraseChecksums[5] = false
            aliveButton.setTitle("I\'m alive", for: UIControlState.normal)
        }
    }
    @IBAction func pioneer(_ sender: UIButton) {
        if phraseChecksums[6] == false {
            pioneerPlayer.play()
            phraseChecksums[6] = true
            pioneerButton.setTitle("I\'m a pioneer", for: UIControlState.normal)
        } else if phraseChecksums[6] == true {
            pioneerButton.setTitle("Paused", for: UIControlState.normal)
            pioneerPlayer.stop()
            phraseChecksums[6] = false
        } else {
            pioneerPlayer.stop()
            phraseChecksums[6] = false
            pioneerButton.setTitle("I\'m a pioneer", for: UIControlState.normal)
        }
    }
    
    @IBAction func angry(_ sender: UIButton) {
        if phraseChecksums[7] == false {
            angryPlayer.play()
            phraseChecksums[7] = true
            angryButton.setTitle("I\'m angry", for: UIControlState.normal)
        } else if phraseChecksums[7] == true {
            angryButton.setTitle("Paused", for: UIControlState.normal)
            angryPlayer.stop()
            phraseChecksums[7] = false
        } else {
            angryPlayer.stop()
            phraseChecksums[7] = false
            angryButton.setTitle("I\'m angry", for: UIControlState.normal)
        }
    }
    
    @IBAction func explorer(_ sender: UIButton) {
        if phraseChecksums[8] == false {
            explorerPlayer.play()
            phraseChecksums[8] = true
            explorerButton.setTitle("I\'m an explorer", for: UIControlState.normal)
        } else if phraseChecksums[8] == true {
            explorerButton.setTitle("Paused", for: UIControlState.normal)
            explorerPlayer.stop()
            phraseChecksums[8] = false
        } else {
            explorerPlayer.stop()
            phraseChecksums[8] = false
            explorerButton.setTitle("I\'m an explorer", for: UIControlState.normal)
        }
    }
    

}

