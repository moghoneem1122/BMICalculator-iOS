//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mohammed on 20/08/2025.
//  Copyright © 2025 Angela Yu. All rights reserved.
//
import UIKit

struct CalculatorBrain{
    
    var bmi:Bmi?
    
    
    
    mutating func calculateBMI(height:Float, weight:Float){
        
        let  bmi1 = weight / (height * height)
        
        if bmi1 < 18.5 {
            bmi=Bmi(value: bmi1, advice:"eat more pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if bmi1 < 24.9 {
            bmi=Bmi(value: bmi1, advice:"fit as a fiddle!", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1))
        }
        else{
            bmi=Bmi(value: bmi1, advice: "eat less if possible!" , color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
            
        }
    }
        func getBMI() -> String{
            let myBmi=String(format: "%.2f", bmi?.value ?? 0.0)
            
            return myBmi
        }
        
    
    func getColor()->UIColor{
        
        return bmi?.color ?? UIColor.black
    }
    
    func getAdvice()->String{
        
        return bmi?.advice ?? "no hella advice"
    }
        
    
}
