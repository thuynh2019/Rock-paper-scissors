//
//  ViewController.swift
//  rock paper scissors
//
//  Created by Ty Huynh on 4/12/20.
//  Copyright © 2020 Ty Huynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var cpuLabel: UILabel!
    
    @IBAction func rock(_ sender: Any) {
        myLabel.text = "rock"
    }
    @IBAction func paper(_ sender: Any) {
        myLabel.text = "paper"
    }
    @IBAction func scissor(_ sender: Any) {
        myLabel.text = "scissors"
    }
    
    func winCheck(){
        
    }
    
}

