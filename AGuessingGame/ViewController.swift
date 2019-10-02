//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Kim, Jenis on 2019-09-30.
//  Copyright © 2019 Kim, Jenis. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    // MARK: Properties
    let targetNumber = Int.random(in: 1...100)
    
    @IBOutlet weak var SubmittedGuess: UITextField!
    // MARK: Initianlizers
    
    
    // MARK: Methods (functions)
    
    // Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Make an object named 'synthesizer', which is an instance of the class 'AVspeechSynthesizer'
        
        let synthesizer = AVSpeechSynthesizer()
        
        // Create a string that contains what we want the computer to say
        let message = "I'm thinking of a number between 1 and 100. Guess what it is."
      
        // make an object named 'utterance' which is an instance of the class AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        //speak the message
        synthesizer.speak(utterance)
        //finished
    }

    // will be used to check a guess
    @IBAction func checkGuess(_ sender: Any) {
        // obtain the guess value from the textfield
        let guessText = SubmittedGuess.text!
        let guessNumber = Int(guessText)!
        
        // For testing purposes, what was the guess?
        print("For testig purposes, the guess made was \(guessNumber)")
    
        // Give the appropriate feedback to the user
        if guessNumber > targetNumber {
        print("Guess lower next time")
        } else if guessNumber < targetNumber {
            print("Guess higher next time")
        } else {
            print("You got it")
        }
        
    }

}
