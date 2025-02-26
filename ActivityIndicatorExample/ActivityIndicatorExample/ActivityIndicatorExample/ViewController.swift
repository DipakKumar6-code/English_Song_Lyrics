//
//  ViewController.swift
//  ActivityIndicatorExample
//

import UIKit

class ViewController: UIViewController {

    //outlets:
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnStop(_ sender: UIButton) {
        activityIndicator.stopAnimating()
    }
    
    
    @IBAction func btnStart(_ sender: UIButton) {
        activityIndicator.startAnimating()
    }
} // end class

