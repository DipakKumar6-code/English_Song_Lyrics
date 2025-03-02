//
//  ViewController.swift
//  SwitchExample
//

import UIKit

class ViewController: UIViewController {

    // outlets:
    
    @IBOutlet weak var labelMessage: UILabel!
    
    @IBOutlet weak var labelReminders: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func NotificationsSwitch(_ sender: UISwitch) {
    
        if sender.isOn
        {
            labelMessage.text = "Notification is ON"
        }
        else
        {
            labelMessage.text = "Notification is OFF"
        }
    } // end NotificationsSwitch
    
    
    @IBAction func RemindersSwitch(_ sender: UISwitch) {
    
        if sender.isOn
        {
            labelReminders.text = "Reminder is ON"
        }
        else
        {
            labelReminders.text = "Reminder is OFF"
        }
    
    } // end ReminderSwitch

} // end class

