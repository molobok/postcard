//
//  ViewController.swift
//  Postcard
//
//  Created by Jin Shun Chia on 13/9/14.
//  Copyright (c) 2014 theAppKitchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code evaluates when user presses button.
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor(red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        
        // Clears messageTextField and closes the keyboard
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        // Update button
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

