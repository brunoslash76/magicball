//
//  ViewController.swift
//  magic8ball
//
//  Created by Bruno Russo on 08/04/19.
//  Copyright © 2019 Bruno Russo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var eightBall: UIImageView!
    
    let ballArray = [
        "ball1",
        "ball2",
        "ball3",
        "ball4",
        "ball5",
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.newBallImage()
        
    }
    
    
    func newBallImage() {
        var randomBallImage: Int = Int.random(in: 0...4)
        eightBall.image = UIImage(named: ballArray[randomBallImage])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        self.newBallImage()
    }
    
    @IBAction func askSomethingAction(_ sender: Any) {
        self.newBallImage()
    }
    


}

