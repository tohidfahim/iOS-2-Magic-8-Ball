//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Md. Tohidur Rahman on 16/5/18.
//  Copyright © 2018 Md. Tohidur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var options : Int = 0
    
    let imageChange = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    @IBOutlet weak var ballOption: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        change()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askAny(_ sender: Any) {
       change()
    }
    
    func change() {
        options = Int(arc4random_uniform(5))
        
        ballOption.image = UIImage(named: imageChange[options])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
       change()
    }
    
}

