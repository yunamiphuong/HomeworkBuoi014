//
//  customButton.swift
//  drawBricks2Characters
//
//  Created by Apple on 2/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class customButton: UIButton {
    
    var buttonName : String!
    var buttonLocation: CGPoint!

    convenience init(buttonName: String, buttonLocation: CGPoint) {

        self.init(frame: CGRect(x: buttonLocation.x, y: buttonLocation.y, width: 20, height: 20))
        self.buttonName = "\(buttonName)"
        self.buttonLocation = buttonLocation
//        self.setTitle("\(buttonName)", for: .normal)
        self.backgroundColor = .green
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let button = UIButton()
        button.setTitle("\(buttonName)", for: .normal)
        self.addSubview(button)

    }
    
}
