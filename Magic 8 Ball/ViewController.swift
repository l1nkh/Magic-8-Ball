//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray: [UIImage] = [
        UIImage(resource: .ball1),
        UIImage(resource: .ball2),
        UIImage(resource: .ball3),
        UIImage(resource: .ball4),
        UIImage(resource: .ball5),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = ballArray[0]
    }

    
    @IBAction func askBtnPressed(_ sender: Any) {
        if let chosenBall = ballArray.randomElement(){
            imageView.image = chosenBall
            print(chosenBall)
        }
    }
}
