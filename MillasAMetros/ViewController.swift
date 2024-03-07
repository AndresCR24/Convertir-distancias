//
//  ViewController.swift
//  MillasAMetros
//
//  Created by Andres David Cardenas Ramirez on 6/03/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var distanceTextField: UITextField!
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var resultLabel: UILabel!
    
    let mileUnit: Double = 1.609
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func convertButton(_ sender: Any) {
        let selectedIndex = segmentedControl.selectedSegmentIndex
        let texFieldVal = Double(distanceTextField.text!)!
        
        print("Hemos seleccionado \(selectedIndex)")
        
        if selectedIndex == 0 {
            //let convertedValue = ((texFieldVal / mileUnit) * 1000).rounded() / 1000
            let convertedValue = texFieldVal / mileUnit
            let roundValue = String(format: "%.3f", convertedValue)
            
            resultLabel.text = "El resultado en millas es: \(roundValue)"
        } else {
            let convertedValue = texFieldVal * mileUnit
            let roundValueKm = String(format: "%.3f", convertedValue)
            resultLabel.text = "El resultado en kilometros es: \(roundValueKm)"
        }
    }
    
    
}

