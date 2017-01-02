//
//  ViewController.swift
//  FirstApp
//
//  Created by Matt Porter on 12/30/16.
//  Copyright © 2016 Matt Porter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doButtonPush(_ sender: Any) {
        print("button pushed")
        messageLabel.text = "Hello World"
    }

}

