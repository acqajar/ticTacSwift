//
//  ViewController.swift
//  ticTacToe
//
//  Created by Arsames Qajar on 5/15/16.
//  Copyright © 2016 Arsames Qajar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var player: Bool = true
    
    var score1: Int = 0
    var score2: Int = 0
    
    
    
    @IBOutlet var player1Score: UILabel!
    
    @IBOutlet var player2Score: UILabel!
    
    
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var playerImage: UIImageView!
    
    
    
    @IBAction func playerGrid(sender: AnyObject) {
       
        scoreLabel.text = ""
        
        if player == true {
            score1 += 1
            player1Score.text = "\(score1)"
            playerImage.image = UIImage(named: "Jay_Ruzesky.jpeg")
            player = false
        } else {
            score2 += 1
            player2Score.text = "\(score2)"
            playerImage.image = UIImage(named: "Matthew_Wiebe.jpeg")
            player = true
        }

    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "Start"
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    

}

