//
//  ViewController.swift
//  Example
//
//  Created by David Cordero on 23.07.18.
//  Copyright © 2018 David Cordero. All rights reserved.
//

import UIKit
import TvOSSlider

class ViewController: UIViewController {
    
    @IBOutlet private weak var tvOSSlider: TvOSSlider!
    @IBOutlet private weak var valueLabel: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        tvOSSlider.addTarget(self, action: #selector(sliderValueChanges), for: .valueChanged)
        tvOSSlider.minimumValue = 0
        tvOSSlider.maximumValue = 100
        tvOSSlider.stepValue = 10
        tvOSSlider.minimumTrackTintColor = .orange
    }
    
    @objc
    func sliderValueChanges(slider: TvOSSlider) {
        valueLabel.text = "\(slider.value)"
    }
}
