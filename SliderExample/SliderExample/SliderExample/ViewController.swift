//
//  ViewController.swift
//  SliderExample
//

import UIKit

class ViewController: UIViewController {

   // outlets
    
    @IBOutlet weak var labelAge: UILabel!
    
    @IBOutlet weak var labelTax: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func sliderAge(_ sender: UISlider) {
    
        // sender.value represents the slider value
        // round() function rounds it off
        // Int is for typecasting to integer
        // description for converting it as text
        
        labelAge.text = Int(round(sender.value)).description
    }
    
    
    @IBAction func sliderTax(_ sender: UISlider) {
      
        // for displaying it upto two decimal places.
        
        var val = String(format: "%.2f", sender.value)
        labelTax.text = val.description + "%"
        
    }
    
} // end class

