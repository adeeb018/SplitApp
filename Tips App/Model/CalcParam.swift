//
//  CalcParam.swift
//  Tips App
//
//  Created by Adeeb K on 11/12/24.
//

struct CalcParam {
    var billAmount: String
    var tipPercentage: String
    var splitNumber: String
    
    var splitAmount: String?
    
    init(billAmount: String, tipPercentage: String, splitNumber: String) {
        self.billAmount = billAmount
        self.tipPercentage = tipPercentage
        self.splitNumber = splitNumber
    }
}
