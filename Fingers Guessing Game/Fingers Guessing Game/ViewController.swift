//
//  ViewController.swift
//  Fingers Guessing Game
//
//  Created by Jeffrey Eng on 6/30/16.
//  Copyright © 2016 Jeffrey Eng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessTextField: UITextField!
    
    @IBOutlet weak var feedbackLabel: UILabel!
    
    @IBAction func submitGuessButtonClicked(sender: AnyObject) {
        let randomNumber = String(arc4random_uniform(6))
        
        if randomNumber == guessTextField.text {
            feedbackLabel.text = "You correctly guessed \(randomNumber)."
        } else {
            feedbackLabel.text = "You guessed wrong. It was \(randomNumber)."
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

