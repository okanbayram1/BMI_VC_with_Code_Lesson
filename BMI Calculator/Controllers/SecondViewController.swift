//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by okan bayram on 8.02.2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    let viewController = ViewController()
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 20, width: 100, height: 50)
        view.addSubview(label)
        
        let homeButton = UIButton()
        homeButton.setTitle("Home", for: .normal)
        homeButton.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        homeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        homeButton.titleLabel?.textColor = .white
        homeButton.titleLabel?.textAlignment = .center
        homeButton.backgroundColor = .blue
        
        homeButton.addTarget(self, action: #selector(homeButtonTapped), for: .touchUpInside)
        view.addSubview(homeButton)
    }
    
    @objc func homeButtonTapped(_ sender: UIButton) {
        dismiss(animated: true)
        
    }
}
