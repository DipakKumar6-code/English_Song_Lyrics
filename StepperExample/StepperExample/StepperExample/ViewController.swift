//
//  ViewController.swift
//  StepperExample
//
//
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    
    @IBOutlet weak var labelYears: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func StepperYears(_ sender: UIStepper) {
    
        labelYears.text = sender.value.description
    }
} // end class

