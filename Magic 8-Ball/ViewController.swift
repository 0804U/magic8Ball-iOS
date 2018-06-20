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
    
    @IBOutlet weak var ballImage1: UIImageView!
    @IBOutlet var ballImage: UIView!

    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shakeActionButton(_ sender: UIButton) {
        shakeBall()
    }
    
    func shakeBall() {
        randomBallShake = Int(arc4random_uniform(4))
        
        ballImage1.image = UIImage(named: ballArray[randomBallShake])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        shakeBall()
    }
    
}

