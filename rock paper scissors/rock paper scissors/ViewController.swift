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
        let cpuMove: String = cpuChoice()
        var _: String = "..."
        if cpuMove == "ROCK" {
            myLabel.text = "Rock"
            cpuLabel.text = "Rock"
            winLabel.text = "Tie!"
        } else if cpuMove == "SCISSORS" {
            myLabel.text = "Rock"
            cpuLabel.text = "Scissors"
            winLabel.text = "You Win!"
        } else if cpuMove == "PAPER" {
            myLabel.text = "Rock"
            cpuLabel.text = "Paper"
            winLabel.text = "You lose"
        }
    }
    @IBAction func paper(_ sender: Any) {
            let cpuMove: String = cpuChoice()
            var _: String = "..."
            if cpuMove == "ROCK" {
                myLabel.text = "Paper"
                cpuLabel.text = "Rock"
                winLabel.text = "You Win!"
            } else if cpuMove == "SCISSORS" {
                myLabel.text = "Paper"
                cpuLabel.text = "Scissors"
                winLabel.text = "You Lose"
            } else if cpuMove == "PAPER" {
                myLabel.text = "Paper"
                cpuLabel.text = "Paper"
                winLabel.text = "Tie!"
            }
        }
    @IBAction func scissor(_ sender: Any) {
            let cpuMove: String = cpuChoice()
            var _: String = "..."
            if cpuMove == "ROCK" {
                myLabel.text = "Scissors"
                cpuLabel.text = "Rock"
                winLabel.text = "You Lose"
            } else if cpuMove == "SCISSORS" {
                myLabel.text = "Scissors"
                cpuLabel.text = "Scissors"
                winLabel.text = "Tie!"
            } else if cpuMove == "PAPER" {
                myLabel.text = "Scissors"
                cpuLabel.text = "Paper"
                winLabel.text = "You Win!"
            }
        }
    
    func cpuChoice() -> String {
        var option: [String] = []
        option.append("ROCK")
        option.append("SCISSORS")
        option.append("PAPER")
        let randomNumber = Int(arc4random_uniform(3))
        return option[randomNumber]
    }
    
}

