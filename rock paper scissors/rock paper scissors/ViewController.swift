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
    
    var player: Int = 0
    var rival: Int = 0
    
    @IBAction func rock(_ sender: Any) {
        var player = 1
        myLabel.text = "rock"
        rival = Int.random(in: 1...3)
        if rival != 0 {
            switch rival {
            case 1:
                cpuLabel.text = "rock"
            case 2:
            cpuLabel.text = "paper"
            case 3:
            cpuLabel.text = "scissors"
            default:
                break
            }
        }
        winCheck()
    }
    @IBAction func paper(_ sender: Any) {
        var player = 2
        myLabel.text = "paper"
        rival = Int.random(in: 1...3)
        if rival != 0 {
            switch rival {
            case 1:
                cpuLabel.text = "rock"
            case 2:
            cpuLabel.text = "paper"
            case 3:
            cpuLabel.text = "scissors"
            default:
                break
            }
        }
        winCheck()
    }
    @IBAction func scissor(_ sender: Any) {
        var player = 3
        myLabel.text = "scissors"
        rival = Int.random(in: 1...3)
        if rival != 0 {
            switch rival {
            case 1:
                cpuLabel.text = "rock"
            case 2:
            cpuLabel.text = "paper"
            case 3:
            cpuLabel.text = "scissors"
            default:
                break
            }
        }
        winCheck()
    }
    
    func winCheck(){
        if player == rival {
            winLabel.text = "Tie!"
        }
        if player == 1 && rival == 2 {
            winLabel.text = "Lose!"
        }
        if player == 1 && rival == 3 {
            winLabel.text = "Win!"
        }
        if player == 2 && rival == 1 {
            winLabel.text = "Win!"
        }
        if player == 2 && rival == 3 {
            winLabel.text = "Lose!"
        }
        if player == 3 && rival == 1 {
            winLabel.text = "Lose!"
        }
        if player == 3 && rival == 2 {
            winLabel.text = "Win!"
        }
        
    }
    
}

