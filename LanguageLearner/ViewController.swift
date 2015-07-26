//
//  ViewController.swift
//  LanguageLearner
//
//  Created by Ryan Famorca on 23/06/2015.
//  Copyright (c) 2015 ryanfamorca.com. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer! = nil
    
    var word :String = ""
    var flashcard:String!

    @IBOutlet weak var MainImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        flashcard = word
        MainImage.image = UIImage(named: "Star")
        println(word)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
@IBAction func buttonPressed(sender: UIButton) {
    
    /*let path = NSBundle.mainBundle().pathForResource("Mariana", ofType: "m4a")
    let fileURL = NSURL(fileURLWithPath: path!)
    player = AVAudioPlayer(contentsOfURL: fileURL, error: nil)
    player.prepareToPlay()
    //player.delegate = self
    player.play()*/
    let speechSynthesizer = AVSpeechSynthesizer()
    
    let speechUtterance = AVSpeechUtterance(string: "estrella")
    speechUtterance.voice = AVSpeechSynthesisVoice(language: "es-ES")
    
    speechUtterance.rate = 0
    speechUtterance.pitchMultiplier = 1.0
    speechUtterance.volume = 0.75
    
    speechSynthesizer.speakUtterance(speechUtterance)
    }

    @IBAction func EnglishPressed(sender: UIButton) {
        let speechSynthesizer = AVSpeechSynthesizer()
        
        let speechUtterance = AVSpeechUtterance(string: flashcard)// be too in
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        
        speechUtterance.rate = 0
        speechUtterance.pitchMultiplier = 1.0
        speechUtterance.volume = 0.75
        
        speechSynthesizer.speakUtterance(speechUtterance)
        
    }
}

