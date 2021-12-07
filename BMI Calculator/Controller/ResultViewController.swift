//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Nick on 28.04.2020.
//  Copyright © 2020 Nick Marchuk. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    var imageBmi:UIImage?
    var bmi:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmi!
        imageView.image = imageBmi
    }
    
    @IBAction func pressedRecalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
