//
//  ViewController.swift
//  Tips App
//
//  Created by Adeeb K on 10/12/24.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var calculatorBrain = CalculatorBrain()
    
    var buttonTitleMinusPercetage: String = "10"
    
    var finalResult: String?
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        twentyPctButton.isSelected = false
        tenPctButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        buttonTitleMinusPercetage = String(buttonTitle.dropLast())
        
        billTextField.endEditing(true)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let bill = billTextField.text!
        let numberOfPeople = splitNumberLabel.text!
        if bill != "" {
            calculatorBrain.calculateSplitAmount(billAmount: bill, tipPercentage: buttonTitleMinusPercetage, numberOfPeople: numberOfPeople)
            performSegue(withIdentifier: "showResult", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.totalPerPerson = calculatorBrain.getSplitAmount()
        destinationVC.tipPercentage = calculatorBrain.getTip()
        destinationVC.splitNumber = calculatorBrain.getSplitNumber()
    }
}

