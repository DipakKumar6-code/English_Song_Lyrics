//
//  ViewController.swift
//  DatePickerExample
//

import UIKit

class ViewController: UIViewController {

    // outlets
    
    @IBOutlet weak var textDate: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    dateFormatter.dateFormat = "MM/dd/yyyy"
    textDate.inputView = datePicker
    datePicker.datePickerMode = .date // defining the mode
    textDate.text = dateFormatter.string(from: datePicker.date)
        
    }

    
    @IBAction func DatePickerValueChanged(_ sender: UIDatePicker) {
        
    
    textDate.text = dateFormatter.string(from: sender.date)
        view.endEditing(true)
    }
    
} // end class

