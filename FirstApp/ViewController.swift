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
    
    let messageArray = ["May the force be with you", "Live long and prosper", "To Infinity and beyond", "Space is big. Really big. You just won’t believe how vastly hugely mindbogglingly big it is"]
    var index = 0
    
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
        messageLabel.text = messageArray[index]
        index += 1
        index %= self.messageArray.count
    }

}

