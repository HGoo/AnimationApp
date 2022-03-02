//
//  ViewController.swift
//  AnimationApp
//
//  Created by Николай Петров on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var coreAnimationView: UIView!
    
    private var originCoordinate: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        originCoordinate = coreAnimationView.frame.origin.x
    }
    
    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()

        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: [.autoreverse, .repeat]) {
            self.coreAnimationView.frame.origin.x += 40
        }
    }
}

