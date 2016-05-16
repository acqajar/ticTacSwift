//
//  ViewController.swift
//  ticTacToe
//
//  Created by Arsames Qajar on 5/15/16.
//  Copyright © 2016 Arsames Qajar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var player: Bool = true
    
    var score1: Int = 0
    var score2: Int = 0

    
    
    @IBOutlet var player1Score: UILabel!
    
    @IBOutlet var player2Score: UILabel!
    
    
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var playerImage: UIImageView!
    
    @IBOutlet var tableInput: UITableView!
    
    
    
    
    
    var cellContent = ["3", "4", "5", "6"]

    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cellContent.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
        
    }
    
    
    
    @IBAction func rowInput(sender: AnyObject) {
        
        if tableInput.hidden == true{
            tableInput.hidden = false
        } else {
            tableInput.hidden = true
        }
        
        
    }

    
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
         tableInput.hidden = true
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    

}

