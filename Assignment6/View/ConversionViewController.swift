//
//  ConversionViewController.swift
//  Assignment6
//
//  Created by user269254 on 2/11/25.
//

import UIKit

class ConversionViewController: UIViewController {
    
    var usd: Int = 0
    var conversions: [Bool] = [false, false, false, false]
    
    
    @IBOutlet weak var usdLabel: UILabel!
    
    @IBOutlet weak var labelOneEuro: UILabel!
    @IBOutlet weak var labelTwoEuro: UILabel!
    
    @IBOutlet weak var labelTwoCad: UILabel!
    @IBOutlet weak var labelOneCad: UILabel!
    
    @IBOutlet weak var labelOneYen: UILabel!
    @IBOutlet weak var labelTwoYen: UILabel!
    
    @IBOutlet weak var labelOneRuble: UILabel!
    @IBOutlet weak var labelTwoRuble: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //getting our main object
        let currencyObject = CurrencyConverter(usd: usd)
        currencyObject.setValues()
        
        
        //checking which numbers the user wants, and inserting data
        if !conversions[0] {
            labelOneEuro.isHidden = true
            labelTwoEuro.isHidden = true
        } else {
            labelTwoEuro.text = String(format: "%.2f", currencyObject.getEuro())
        }
        
        
        if !conversions[1] {
            labelOneCad.isHidden = true
            labelTwoCad.isHidden = true
        } else {
            labelTwoCad.text = String(format: "%.2f", currencyObject.getCad())
        }
        
        if !conversions[2] {
            labelOneYen.isHidden = true
            labelTwoYen.isHidden = true
        } else {
            labelTwoYen.text = String(format: "%.2f", currencyObject.getYen())
        }
        
        if !conversions[3] {
            labelOneRuble.isHidden = true
            labelTwoRuble.isHidden = true
        } else {
            labelTwoRuble.text = String(format: "%.2f", currencyObject.getRuble())
        }
        
        
        
        usdLabel.text = "USD amount : \(usd)"
        
    }
    
    
    
    
}
