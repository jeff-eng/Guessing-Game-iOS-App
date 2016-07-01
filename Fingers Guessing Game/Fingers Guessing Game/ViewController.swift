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
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func submitGuessButtonClicked(sender: AnyObject) {
        let randomNumber = String(arc4random_uniform(6))
        
        if guessTextField.text == "" {
            feedbackLabel.text = "Please enter a number between 0-5"
            imageView.image = nil       }
        
        else if randomNumber == guessTextField.text {
            feedbackLabel.text = "You correctly guessed \(randomNumber)."
            imageView.image = UIImage(named: "fingercount-\(randomNumber).png")
        }
        
        else {
            feedbackLabel.text = "You guessed wrong. It was \(randomNumber)."
            imageView.image = UIImage(named: "fingercount-\(randomNumber).png")
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

