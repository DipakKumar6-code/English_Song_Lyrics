//
//  ViewController.swift
//  SegmentControlExample
//


import UIKit

class ViewController: UIViewController {

    // outlets
    
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var segControl: UISegmentedControl!
    
    @IBOutlet weak var imageControl: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.isHidden = true
        imageControl.isHidden = true
        
        // Do any additional setup after loading the view.
    }


    @IBAction func segmentControlTapped(_ sender: UISegmentedControl) {
   
        if segControl.selectedSegmentIndex == 0
        {
            labelName.text = "Google"
            // on the right hand side of = , select image literal option from intellisense
            // and after that double click on it to select appropriate image.
            imageControl.image = #imageLiteral(resourceName: "googleLogo")
            // unhide them
            labelName.isHidden = false;   imageControl.isHidden = false
        }
        // ToDo:
        // Complete it for facebook
        
    }
    
} // end class

