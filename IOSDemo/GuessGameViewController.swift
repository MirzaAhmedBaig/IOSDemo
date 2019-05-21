//
//  GuessGameViewController.swift
//  IOSDemo
//
//  Created by Mirza Ahmed Baig on 27/04/18.
//  Copyright © 2018 Avantari. All rights reserved.
//

import UIKit

class GuessGameViewController: UIViewController {

    @IBOutlet var inputFingersCount: UITextField!
    @IBOutlet var showResultText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onGuessClicked(_ sender: UIButton) {
        let holdingCount = arc4random_uniform(6)
        guard let textFieldString = inputFingersCount.text, let guessedCount = Int(textFieldString) else{
            return
        }
        if guessedCount == holdingCount {
            showResultText.text = "Yes!, It is Prime number"
        } else {
            showResultText.text = "Wrong!, Not a prime number"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
