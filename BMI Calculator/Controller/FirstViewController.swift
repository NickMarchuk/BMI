//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Nick on 21.04.2020.
//  Copyright © 2020 Nick Marchuk. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var labelHeigh: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var sliderHeigh: UISlider!
    @IBOutlet weak var sliderWeight: UISlider!
    
    var brainBmi = BMIBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
    }

    @IBAction func changedHeigh(_ sender: UISlider) {
        let heighValue = String(format: "%.2f", sender.value)
        labelHeigh.text = "\(heighValue) m"
        
//        print(String(format: "%.2f", sender.value))
    }
    
    @IBAction func changedWeight(_ sender: UISlider) {
        let weightValue = String(format: "%.0f", sender.value)
        labelWeight.text = "\(weightValue) Kg"
    }
    
    @IBAction func pressedCalculate(_ sender: UIButton) {
        let height = sliderHeigh.value
        let weight = sliderWeight.value
        
        brainBmi.getBmi(weight: weight, height: height)
        performSegue(withIdentifier: "toResultVC", sender: self)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultVC"{
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmi = brainBmi.sendBmi()
            resultVC.imageBmi = brainBmi.getImage()
        }
    }
    
    func setLabels(){
        labelHeigh.text = String(format: "%.2f", sliderHeigh.value) + " m"
        labelWeight.text = String(format: "%.0f", sliderWeight.value) + " Kg"
    }

}

