//
//  ViewController.swift
//  drawBricks2Characters
//
//  Created by Apple on 2/17/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //    let buttonL : UIButton = {
    //        let button = UIButton()
    //        button.backgroundColor = .blue
    //        return button
    //    }()
    //
    //    let buttonI : UIButton = {
    //        let button = UIButton()
    //        button.backgroundColor = .blue
    //        return button
    //    }()
    //
    //    let buttonJ : UIButton = {
    //        let button = UIButton()
    //        button.backgroundColor = .blue
    //        return button
    //    }()
    //
    //    let buttonZ : UIButton = {
    //        let button = UIButton()
    //        button.backgroundColor = .blue
    //        return button
    //    }()
    //
    //    let buttonS : UIButton = {
    //        let button = UIButton()
    //        button.backgroundColor = .blue
    //        return button
    //    }()
    
    enum bool {
        case y // yes
        case n // no
    }
    
    @IBOutlet weak var buttonL: UIButton!
    
    @IBOutlet weak var buttonI: UIButton!
    
    @IBOutlet weak var buttonJ: UIButton!
    
    @IBOutlet weak var buttonZ: UIButton!
    
    @IBOutlet weak var buttonS: UIButton!
    
    let labelTop : UILabel = {
        var label = UILabel()
        label.text = "Click chọn chữ cần vẽ"

        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        view.addSubview(buttonL)
        //        view.addSubview(buttonI)
        //        view.addSubview(buttonJ)
        //        view.addSubview(buttonZ)
        //        view.addSubview(buttonS)
        //
        view.addSubview(labelTop)
        labelTop.center = CGPoint(x: view.center.x, y: view.center.y + 100)
        labelTop.textColor = .blue
        
        buttonL.frame = CGRect(x: 10, y: 600, width: 50, height: 50)
        buttonL.setTitle("L", for: .normal)
        buttonL.backgroundColor = .gray
        
        buttonI.frame = CGRect(x: buttonL.frame.origin.x + 80, y: 600, width: 50, height: 50)
        buttonI.setTitle("I", for: .normal)
        buttonI.backgroundColor = .gray
        
        buttonJ.frame = CGRect(x: buttonI.frame.origin.x + 80, y: 600, width: 50, height: 50)
        buttonJ.setTitle("J", for: .normal)
        buttonJ.backgroundColor = .gray
        
        buttonZ.frame = CGRect(x: buttonJ.frame.origin.x + 80, y: 600, width: 50, height: 50)
        buttonZ.setTitle("Z", for: .normal)
        buttonZ.backgroundColor = .gray
        
        buttonS.frame = CGRect(x: buttonZ.frame.origin.x + 80, y: 600, width: 50, height: 50)
        buttonS.setTitle("S", for: .normal)
        buttonS.backgroundColor = .gray
        
        // mặc định vẽ chữ L đầu tiên
        drawCharacter(first: .y, second: .n, third: .n, forth: .y, fifth: bool.n, sixth: .n, seventh: .y, eighth: .y, nineth: .n)
        
    }
    
    func drawABrick(startPoint: CGPoint, radius: CGFloat, color: UIColor) {
        
        let brick = BrickView(startPoint: CGPoint(x: startPoint.x, y: startPoint.y), radius: radius, color: color)
        view.addSubview(brick)
    }
    
    func drawCharacter(first: bool, second: bool, third: bool, forth: bool, fifth: bool, sixth: bool, seventh: bool, eighth: bool, nineth: bool) {
        
        switch first {
        case bool.y:
            drawABrick(startPoint: CGPoint(x: 100, y: 100), radius: 25, color: .green)
        default:
            drawABrick(startPoint: CGPoint(x: 100, y: 100), radius: 25, color: view.backgroundColor ?? .white)
        }
        
        switch second {
        case bool.y:
            drawABrick(startPoint: CGPoint(x: 150, y: 100), radius: 25, color: .green)
        default:
            drawABrick(startPoint: CGPoint(x: 150, y: 100), radius: 25, color: view.backgroundColor ?? .white)
        }
        
        switch third {
        case bool.y:
            drawABrick(startPoint: CGPoint(x: 200, y: 100), radius: 25, color: .green)
        default:
            drawABrick(startPoint: CGPoint(x: 200, y: 100), radius: 25, color: view.backgroundColor ?? .white)
        }
        
        switch forth {
        case bool.y:
            drawABrick(startPoint: CGPoint(x: 100, y: 150), radius: 25, color: .green)
        default:
            drawABrick(startPoint: CGPoint(x: 100, y: 150), radius: 25, color: view.backgroundColor ?? .white)
        }
        
        switch fifth {
        case bool.y:
            drawABrick(startPoint: CGPoint(x: 150, y: 150), radius: 25, color: .green)
        default:
            drawABrick(startPoint: CGPoint(x: 150, y: 150), radius: 25, color: view.backgroundColor ?? .white)
        }
        
        switch sixth {
        case bool.y:
            drawABrick(startPoint: CGPoint(x: 200, y: 150), radius: 25, color: .green)
        default:
            drawABrick(startPoint: CGPoint(x: 200, y: 150), radius: 25, color: view.backgroundColor ?? .white)
        }
        
        switch seventh {
        case bool.y:
            drawABrick(startPoint: CGPoint(x: 100, y: 200), radius: 25, color: .green)
        default:
            drawABrick(startPoint: CGPoint(x: 100, y: 200), radius: 25, color: view.backgroundColor ?? .white)
        }
        
        switch eighth {
        case bool.y:
            drawABrick(startPoint: CGPoint(x: 150, y: 200), radius: 25, color: .green)
        default:
            drawABrick(startPoint: CGPoint(x: 150, y: 200), radius: 25, color: view.backgroundColor ?? .white)
        }
        
        switch nineth {
        case bool.y:
            drawABrick(startPoint: CGPoint(x: 200, y: 200), radius: 25, color: .green)
        default:
            drawABrick(startPoint: CGPoint(x: 200, y: 200), radius: 25, color: view.backgroundColor ?? .white)
        }
        
        
    }
    
    @IBAction func buttonL(_ sender: Any) {
        drawCharacter(first: .y, second: .n, third: .n, forth: .y, fifth: .n, sixth: .n, seventh: .y, eighth: .y, nineth: .n)
    }
    
    @IBAction func buttonI(_ sender: Any) {
        drawCharacter(first: .y, second: .y, third: .y, forth: .n, fifth: .y, sixth: .n, seventh: .y, eighth: .y, nineth: .y)
    }
    
    @IBAction func buttonJ(_ sender: Any) {
        drawCharacter(first: .n, second: .y, third: .n, forth: .n, fifth: .y, sixth: .n, seventh: .y, eighth: .y, nineth: .n)
    }
    
    @IBAction func buttonZ(_ sender: Any) {
        drawCharacter(first: .y, second: .y, third: .n, forth: .n, fifth: .y, sixth: .n, seventh: .n, eighth: .y, nineth: .y)
    }
    
    @IBAction func buttonS(_ sender: Any) {
        drawCharacter(first: .n, second: .y, third: .y, forth: .n, fifth: .y, sixth: .n, seventh: .y, eighth: .y, nineth: .n)
    }
    
}

