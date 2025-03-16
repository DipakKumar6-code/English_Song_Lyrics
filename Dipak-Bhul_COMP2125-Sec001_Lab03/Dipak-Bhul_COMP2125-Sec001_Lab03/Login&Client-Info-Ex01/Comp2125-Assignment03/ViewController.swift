//
//  ViewController.swift
//  Comp2125-Assignment03
//
//  Created by Dipak Ram Bhul on 2025-03-14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textUserName: UITextField!
    
    @IBOutlet weak var userPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnLoggedIn(_ sender: UIButton) {
        performSegue(withIdentifier: "segueToClient", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToClient" {
            let clientVC = segue.destination as! ClientViewController
            clientVC.username = textUserName.text ?? ""
        }
    }
}

