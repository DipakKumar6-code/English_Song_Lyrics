//
//  ViewController.swift
//  Tip&Amount-Calculator
//
//  Created by Dipak Ram Bhul on 2025-03-14.
//

import UIKit

class ViewController: UIViewController {
    
    // Required outlets for tip and amount calculator
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var fifteenPercentTipLabel: UILabel!
    @IBOutlet weak var fifteenPercentTotalLabel: UILabel!
    @IBOutlet weak var customTipLabel: UILabel!
    @IBOutlet weak var customTotalLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var customTipPercentageLabel: UILabel!
    @IBOutlet weak var customTipPercentTop: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipSlider.value = 18 // Default custom tip percentage
        billAmountField.keyboardType = .decimalPad // Ensuring numeric keypad
        billAmountField.addTarget(self, action: #selector(billAmountChanged), for: .editingChanged)
        updateTipValues()
    }
    
    @IBAction func billAmountChanged(_ sender: UITextField) {
        updateTipValues()
    }
    
    @IBAction func tipSliderChanged(_ sender: UISlider) {
        updateTipValues()
    }
    
    func updateTipValues() {
        if let billText = billAmountField.text, !billText.isEmpty, let billAmount = Double(billText) {
        let fifteenPercentTip = (billAmount * 15) / 100
        let fifteenPercentTotal = billAmount + fifteenPercentTip
        let customTipPercentage = Double(tipSlider.value)
        let customTipAmount = (billAmount * customTipPercentage) / 100
        let customTotal = billAmount + customTipAmount
                    
            fifteenPercentTipLabel.text = String(format: "$%.2f", fifteenPercentTip)
            fifteenPercentTotalLabel.text = String(format: "$%.2f", fifteenPercentTotal)
            customTipLabel.text = String(format: "$%.2f", customTipAmount)
            customTotalLabel.text = String(format: "$%.2f", customTotal)
            customTipPercentageLabel.text = "\(Int(customTipPercentage))%"
            customTipPercentTop.text = "\(Int(customTipPercentage))"
                } else {
                    clearLabels()
                }
    }
    
    func clearLabels() {
        fifteenPercentTipLabel.text = "$0.00"
        fifteenPercentTotalLabel.text = "$0.00"
        customTipLabel.text = "$0.00"
        customTotalLabel.text = "$0.00"
        customTipPercentageLabel.text = "Custom Tip: 0%"
    }
}

