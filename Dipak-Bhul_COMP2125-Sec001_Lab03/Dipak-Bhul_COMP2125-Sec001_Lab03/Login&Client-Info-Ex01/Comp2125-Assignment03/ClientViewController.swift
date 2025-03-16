//
//  ClientViewController.swift
//  Comp2125-Assignment03
//
//  Created by Dipak Ram Bhul on 2025-03-14.
//

import UIKit

class ClientViewController: UIViewController {

    // Outlets for user input fields
    @IBOutlet weak var projectName: UITextField!
    
    @IBOutlet weak var projectDuration: UITextField!
    
    @IBOutlet weak var projectLocation: UITextField!

    // Outlet for displaying the formatted output
    @IBOutlet weak var displayOutput: UITextView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
        }
    
    var username: String = "" // Variable to store the username passed from the previous screen
    
    @IBAction func submitInfoBtn(_ sender: Any) {
        // will retrieve text from input fields
        
        let projectNameText = projectName.text ?? ""
        let projectDurationText = projectDuration.text ?? ""
        let projectLocationText = projectLocation.text ?? ""

        // Format the collected data into a structured output
        let finalResult = """
                UserName is: \(username)
                Project Name is: \(projectNameText)
                Project Duration is: \(projectDurationText)
                Project Location is: \(projectLocationText)
                """
                
        displayOutput.text = finalResult  // Display the formatted output in the text view
    }
    
}
