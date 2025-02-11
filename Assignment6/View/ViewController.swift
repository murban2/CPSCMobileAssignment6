//
//  ViewController.swift
//  Assignment6
//
//  Created by user269254 on 2/10/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var usdField: UITextField!
    
    @IBOutlet weak var euroSwitch: UISwitch!
    @IBOutlet weak var cadSwitch: UISwitch!
    @IBOutlet weak var yenSwitch: UISwitch!
    @IBOutlet weak var rubleSwitch: UISwitch!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    var usdAmount: Int = 0
    var boolArray: [Bool] = [false, false, false, false]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    
    @IBAction func convertButton(_ sender: Any) {
        
        //testing if valid int is entered
        if !CurrencyConverter.isInteger(str: usdField.text!) {
            errorLabel.text = "Enter a valid integer for USD"
            return
        } else {
            errorLabel.text = ""
        }
        
        //instantiate object and set values
        var currencyObject = CurrencyConverter(usd: Int(usdField.text!)!)
        
        currencyObject.setCurrencies(euroStatus: euroSwitch.isOn, cadStatus: cadSwitch.isOn, yenStatus: yenSwitch.isOn, rubleStatus: rubleSwitch.isOn)
        
        //set vars for next view
        boolArray = currencyObject.getCurrencies()
        usdAmount = currencyObject.getUsd()
        
        //perform segue
        self.performSegue(withIdentifier: "toConversionAmount", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toConversionAmount" {
            let conversionNavigation = segue.destination as! ConversionViewController
            
            //transfer values to next view
            conversionNavigation.usd = usdAmount
            conversionNavigation.conversions = boolArray
        }
    }
    
    

}

