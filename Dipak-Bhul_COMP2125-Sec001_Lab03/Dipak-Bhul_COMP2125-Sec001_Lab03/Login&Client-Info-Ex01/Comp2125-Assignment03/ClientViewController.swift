//
//  ClientViewController.swift
//  Comp2125-Assignment03
//
//  Created by Dipak Ram Bhul on 2025-03-14.
//

import UIKit

class ClientViewController: UIViewController {
    
    @IBOutlet weak var projectName: UITextField!
    
    @IBOutlet weak var projectDuration: UITextField!
    
    @IBOutlet weak var projectLocation: UITextField!
    
    @IBOutlet weak var displayOutput: UITextView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
        }
    
    var username: String = ""
    
    @IBAction func submitInfoBtn(_ sender: Any) {
        let projectNameText = projectName.text ?? ""
        let projectDurationText = projectDuration.text ?? ""
        let projectLocationText = projectLocation.text ?? ""
        let finalResult = """
                UserName is: \(username)
                Project Name is: \(projectNameText)
                Project Duration is: \(projectDurationText)
                Project Location is: \(projectLocationText)
                """
                
        displayOutput.text = finalResult
    }
    
}
