//
//  ViewController.swift
//  HW2.2
//
//  Created by Егор Кромин on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redSliderOutlet: UISlider!
    @IBOutlet var greenSliderOutlet: UISlider!
    @IBOutlet var blueSliderOutlet: UISlider!
    
    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var blueLabelValue: UILabel!
    
    @IBOutlet var coloredView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coloredView.layer.cornerRadius = 30
        coloredView.layer.borderWidth = 1
        coloredView.layer.borderColor = UIColor.black.cgColor
        
        redSliderOutlet.minimumValue = 0
        greenSliderOutlet.minimumValue = 0
        blueSliderOutlet.minimumValue = 0
        redSliderOutlet.maximumValue = 1
        greenSliderOutlet.maximumValue = 1
        blueSliderOutlet.maximumValue = 1
        redSliderOutlet.value = 0.56
        greenSliderOutlet.value = 0.56
        blueSliderOutlet.value = 0.58
        
        redLabelValue.text = String(redSliderOutlet.value)
        greenLabelValue.text = String(greenSliderOutlet.value)
        blueLabelValue.text = String(blueSliderOutlet.value)

    }

    
    
    @IBAction func sliderAction() {
        redLabelValue.text = String(format: "%.2f", redSliderOutlet.value)
        greenLabelValue.text = String(format: "%.2f", greenSliderOutlet.value)
        blueLabelValue.text = String(format: "%.2f", blueSliderOutlet.value)
        
        coloredView.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value), green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1)
    }
    
        
    
}

