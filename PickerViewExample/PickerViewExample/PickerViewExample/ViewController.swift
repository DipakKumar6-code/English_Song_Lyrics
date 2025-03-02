//
//  ViewController.swift
//  PickerViewExample
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    // Outlets:
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var labelOutput: UILabel!
    
    var arrayValues = Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    pickerView.dataSource = self
    pickerView.delegate = self
                 
    for i in 0..<10
    {
        arrayValues.insert("item " + (i+1).description, at: i)
    } // end for
        
}
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        arrayValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        labelOutput.text = arrayValues[row]
        return arrayValues[row]
    }
    
    
} // end class
/*
extension ViewController : UIPickerViewDataSource
  {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayValues.count
    }
      
} // end extension

 */
  
/*
extension ViewController : UIPickerViewDelegate
{
      
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        labelOutput.text = arrayValues[row]
        return arrayValues[row]
    }
} // end extension
 
*/
