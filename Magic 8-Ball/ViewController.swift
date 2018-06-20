//
//  ViewController.swift
//  Magic 8-Ball
//
//  Created by Jeffrey Funk on 6/16/18.
//  Copyright © 2018 JTF Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomBallShake : Int = 0

    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballImage1: UIImageView!
    @IBOutlet var ballImage: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
   
        shakeBall()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func shakeActionButton(_ sender: UIButton) {
    
        shakeBall()
    
    }
    
    func shakeBall() {
       
        randomBallShake = Int(arc4random_uniform(5))
        
        ballImage1.image = UIImage(named: ballArray[randomBallShake])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        shakeBall()
    
    }
    
}

