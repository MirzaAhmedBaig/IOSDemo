//
//  ViewController.swift
//  IOSDemo
//
//  Created by Mirza Ahmed Baig on 26/04/18.
//  Copyright © 2018 Avantari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var inputAge: UITextField!
    
    @IBOutlet var outputAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        guard let textFieldString = inputAge.text, let inputInt = Int(textFieldString) else {
            return
        }
        
        
        outputAge.text = "\(inputInt * 7)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

