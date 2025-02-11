//
//  CurrencyConverter.swift
//  Assignment6
//
//  Created by user269254 on 2/11/25.
//

import Foundation

class CurrencyConverter {
    
    //base values
    var euro: Float = 0
    var cad: Float = 0
    var yen: Float = 0
    var ruble: Float = 0
    
    var currencies = [false, false, false, false]
    
    
    //init variable
    var usd: Int
    
    
    init(usd: Int) {
        self.usd = usd
    }
    
    //testing if a string can turn into an int
    static func isInteger(str: String) -> Bool {
        return Int(str) != nil
    }
    
    //getter
    func getCurrencies() -> [Bool] {
        return currencies
    }
    
    //setting the currencies array
    func setCurrencies(euroStatus: Bool, cadStatus:Bool, yenStatus: Bool, rubleStatus: Bool) {
        
        if euroStatus == true {
            currencies[0] = true
        } else {
            currencies[0] = false
        }
        
        if cadStatus == true {
            currencies[1] = true
        } else {
            currencies[1] = false
        }
        
        if yenStatus == true {
            currencies[2] = true
        } else {
            currencies[2] = false
        }
        
        if rubleStatus == true {
            currencies[3] = true
        } else {
            currencies[3] = false
        }
        
    }
    
    //getters
    func getCad() -> Float {
        return self.cad
    }
    
    func getYen() -> Float {
        return self.yen
    }
    
    func getRuble() -> Float {
        return self.ruble
    }
    
    func getEuro() -> Float {
        return self.euro
    }
    
    func getUsd() -> Int {
        return self.usd
    }
    
    //finding the conversion values
    func setValues() {
        
        self.euro = 0.97 * Float(usd)
        self.cad = 1.43 * Float(usd)
        self.yen = 152.56 * Float(usd)
        self.ruble = 95.63 * Float(usd)
        
    }
    
    
    
    
    
    
}




