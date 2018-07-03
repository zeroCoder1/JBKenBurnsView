//
//  ViewController.swift
//  KenBurns
//
//  Created by Basberg, Johan on 17/05/2016.
//  Copyright © 2016 IGT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kenBurnsView: JBKenBurnsView!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var startRandomButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startButtonTouchUp(sender: UIButton) {
        let images = [
            UIImage(named: "ImageOne")!,
            UIImage(named: "ImageTwo")!,
            UIImage(named: "Johan")!,
            ]
        
        kenBurnsView.animateWithImages(images: images, imageAnimationDuration: 10, initialDelay: 0, shouldLoop: true)
    }

    @IBAction func startRandomButtonTouchUp(sender: UIButton) {
        let images = [
            UIImage(named: "ImageOne")!,
            UIImage(named: "ImageTwo")!,
            UIImage(named: "Johan")!,
            ]
        
        kenBurnsView.animateWithImages(images: images, imageAnimationDuration: 10, initialDelay: 0, shouldLoop: true, randomFirstImage: true)
    }

    @IBAction func pauseButtonTouchUp(sender: UIButton) {
        if kenBurnsView.isPaused {
            kenBurnsView.resumeAnimation()
            pauseButton.setTitle("Pause", for: .normal)
        } else {
            kenBurnsView.pauseAnimation()
            pauseButton.setTitle("Resume", for: .normal)
        }
    }

    @IBAction func stopButtonTouchUp(sender: UIButton) {
        kenBurnsView.stopAnimation()
    }

    
}

