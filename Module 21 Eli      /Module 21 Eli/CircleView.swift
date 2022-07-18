//
//  CircleView.swift
//  Module 21 Eli
//
//  Created by Elaidzha Shchukin on 20.06.2022.
//

import UIKit

@IBDesignable
class CircleView: UIView {

    @IBInspectable var roundView: Bool = false {
        didSet {
            if roundView {
                layer.cornerRadius = frame.height / 2
            }
        }
    }

    @IBInspectable var blueColor: Bool = false {
        didSet {
            if blueColor {
                backgroundColor = .systemTeal
            }
        }
    }
    
    override func prepareForInterfaceBuilder() {
        if roundView {
            layer.cornerRadius = frame.height / 2
        }
        if blueColor {
            backgroundColor = .systemTeal
        }
    }
    


    
    
    
    
    
}
