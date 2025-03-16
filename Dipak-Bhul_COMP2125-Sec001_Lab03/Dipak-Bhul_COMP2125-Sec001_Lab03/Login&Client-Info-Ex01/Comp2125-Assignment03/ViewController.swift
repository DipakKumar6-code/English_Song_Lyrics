//
//  ViewController.swift
//  Comp2125-Assignment03
//
//  Created by Dipak Ram Bhul on 2025-03-14.
//

import UIKit

class ViewController: UIViewController {

    // Outlets for username and password text fields
    @IBOutlet weak var textUserName: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnLoggedIn(_ sender: UIButton) {
        // Perform segue to navigate to the ClientViewController
        performSegue(withIdentifier: "segueToClient", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToClient" {
            // Pass the entered username to ClientViewController
            
            let clientVC = segue.destination as! ClientViewController
            clientVC.username = textUserName.text ?? ""
        }
    }
}

