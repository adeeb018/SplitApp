//
//  CalculatorBrain.swift
//  Tips App
//
//  Created by Adeeb K on 11/12/24.
//

struct CalculatorBrain {
    var calcParam: CalcParam?
    
    mutating func calculateSplitAmount(billAmount: String, tipPercentage: String, numberOfPeople: String) {
        self.calcParam = CalcParam(billAmount: billAmount, tipPercentage: tipPercentage, splitNumber: numberOfPeople)
        
        var billTotal = Double(calcParam!.billAmount)!
        billTotal = (billTotal * (1 + tip())) / Double(calcParam!.splitNumber)!
        
        calcParam?.splitAmount = String(format: "%.2f", billTotal)
    }
    
    func tip() -> Double {
        let tip = Double(calcParam!.tipPercentage)! / 100
        return tip
    }
    
    func getTip() -> String {
        return calcParam?.tipPercentage ?? "0"
    }
    
    func getSplitAmount() -> String {
        return calcParam?.splitAmount ?? "0"
    }
    
    func getSplitNumber() -> String {
        return calcParam?.splitNumber ?? "2"
    }
}
