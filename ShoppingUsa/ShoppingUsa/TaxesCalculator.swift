//
//  TaxesCalculator.swift
//  ShoppingUsa
//
//  Created by Rennan Bruno on 29/01/22.
//

import Foundation

class TaxesCalculator {
    
    static let shared = TaxesCalculator()
    var dolar: Double = 5.49
    var iof: Double = 6.38
    var stateTax: Double = 7.0
    var shoppingValue: Double = 0
    
    var shoppingValueInReal: Double {
        return shoppingValue * dolar
    }
    
    var stateTaxValue: Double {
        return (shoppingValue * stateTax)/100
    }
    
    var iofValue: Double {
        return (shoppingValue + stateTax) * iof/100
    }
    
    func calculate(usingCreditCard: Bool) -> Double{
        var finalValue = shoppingValue + stateTax
        if usingCreditCard {
            finalValue += iofValue
        }
        return finalValue
    }
    
    private init(){
        
    }
}
