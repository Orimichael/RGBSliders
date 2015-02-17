//
//  ViewController.swift
//  RGBSliders
//
//  Created by Ori's Air on 2/17/15.
//  Copyright (c) 2015 Thinkful. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    
    @IBOutlet weak var squareView: UIView!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func resetButton(sender: UIButton) {
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        updateSquareColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        squareView.layer.borderColor = UIColor.blackColor().CGColor
        squareView.layer.borderWidth = 1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func updateSquareColor() {
        // sets background color to colors established by sliders
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        squareView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }


}

