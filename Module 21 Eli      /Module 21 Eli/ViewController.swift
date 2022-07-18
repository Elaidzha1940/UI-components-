//
//  ViewController.swift
//  Module 21 Eli
//
//  Created by Elaidzha Shchukin on 20.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCircle: CircleView!
    
    @IBOutlet weak var secondCircle: CircleView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func panActionOne(_ gesture: UIPanGestureRecognizer) {
        
        let firstCircleFrame = firstCircle.frame
        let secondCircleFrame = secondCircle.frame
        
        for value in Int(secondCircleFrame.minY)...Int(secondCircleFrame.maxY) {
            if Int(firstCircleFrame.origin.y) == value {
                secondCircle.isHidden = true
                firstCircle.backgroundColor = .blue
            }
        }
        
        let gestureTranslation = gesture.translation(in: view)
        guard let gestureView = gesture.view else { return }
        gestureView.center = CGPoint (x: gestureView.center.x + gestureTranslation.x, y: gestureView.center.y + gestureTranslation.y)
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else { return }
    }
    
}

