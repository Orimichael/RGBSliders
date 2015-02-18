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
        
        let defaults = NSUserDefaults.standardUserDefaults()
        redSlider.value = defaults.floatForKey("red")
        greenSlider.value = defaults.floatForKey("green")
        blueSlider.value = defaults.floatForKey("blue")

        squareView.layer.borderColor = UIColor.blackColor().CGColor
        squareView.layer.borderWidth = 1
        
                updateSquareColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // stuff
        if (segue.identifier == "openColor") {
         let newViewController = segue.destinationViewController as UIViewController
            newViewController.view.backgroundColor = squareView.backgroundColor
        }
    }
    
    @IBAction func updateSquareColor() {
        // sets background color to colors established by sliders
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        squareView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        let defaults = NSUserDefaults.standardUserDefaults()  //1
        defaults.setFloat(redSlider.value, forKey: "red")   //2
        defaults.setFloat(greenSlider.value, forKey: "green")
        defaults.setFloat(blueSlider.value, forKey: "blue")
        defaults.synchronize()    //3
    }

    

}

