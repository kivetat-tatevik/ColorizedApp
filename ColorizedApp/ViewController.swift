//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Tatevik Khunoyan on 30.07.2023.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: IB-Outlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var rSlider: UISlider!
    @IBOutlet var gSlider: UISlider!
    @IBOutlet var bSlider: UISlider!
    
    @IBOutlet var rTextLabel: UILabel!
    @IBOutlet var gTextLabel: UILabel!
    @IBOutlet var bTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 10
        setupColorView()
    }
    
    // MARK: IB Actions
    @IBAction func rgbSliderChanged() {
        changeColor()
        rTextLabel.text = String(format: "%.2f", rSlider.value)
        gTextLabel.text = String(format: "%.2f", gSlider.value)
        bTextLabel.text = String(format: "%.2f", bSlider.value)
    }
    
    // MARK: - Private Methods
    private func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(rSlider.value), green: CGFloat(gSlider.value), blue: CGFloat(bSlider.value), alpha: 1)
    }
    private func setupColorView() {
        colorView.backgroundColor = UIColor(red: CGFloat(rSlider.value), green: CGFloat(gSlider.value), blue: CGFloat(bSlider.value), alpha: 1)
    }
}


