//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heigthSlider: UISlider!
    @IBOutlet weak var weigthSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value)) kg"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.1f", sender.value)) kg"
    }
    @IBAction func calculateClicked(_ sender: Any) {
        let height = heigthSlider.value
        let weight = weigthSlider.value
        let bmi = weight / pow(height, 2)
        print(String(format: "%.2f", height))
        print(String(format: "%.2f", weight))
        print(String(format: "%.2f", bmi))
        
        let secondVC = SecondViewController()
        
        secondVC.bmiValue = String(format: "%.2f",  bmi)
        secondVC.modalPresentationStyle = .fullScreen
        
        self.present(secondVC, animated: true, completion: nil)
    }
}
