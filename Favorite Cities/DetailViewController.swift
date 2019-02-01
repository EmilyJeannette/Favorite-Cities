//
//  DetailViewController.swift
//  Favorite Cities
//
//  Created by Emily Kirk on 1/29/19.
//  Copyright © 2019 Emily Kirk. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var cityTexField: UITextField!
    
    @IBOutlet weak var stateTextField: UITextField!
    
    @IBOutlet weak var populationTextField: UITextField!
    
    @IBOutlet weak var flagView: UIImageView!
    
    var detailItem: City? {
        didSet {
            // Update the view.
            configureView()
        }
        
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
  
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let city = self.detailItem {
            if cityTexField != nil {
                cityTexField.text = city.name
                stateTextField.text = city.state
                populationTextField.text = String(city.population)
                flagView.image = UIImage(data: city.image)
            }
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        if let city = self.detailItem {
            city.name = cityTexField.text!
            city.state = stateTextField.text!
            city.population = Int(populationTextField.text!)!
        }
    }

}

