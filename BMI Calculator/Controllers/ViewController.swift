//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculatrBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heighSlider: UISlider!
    
    @IBOutlet weak var weightLable: UILabel!
    @IBAction func sliderMoved(_ sender: UISlider) {
        
    
 let height=String(format:"%.2f",heighSlider.value)
            
        heightLabel.text="\(height)M"
     
        
    }
    
    @IBAction func slider2Moved(_ sender: UISlider)
    {
        let weight = String(format:"%.0f",weightSlider.value)
        weightLable.text = "\(weight)Kg"
     
    }
    
    @IBAction func calculatePressed(_ sender: UIButton){
        
        let weight = Float(weightSlider.value)
        let height = Float(heighSlider.value)
        calculatrBrain.calculateBMI(height: height, weight: weight)


        
        self.performSegue(withIdentifier: "goToResult", sender: self)}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        
        if segue.identifier == "goToResult" {
            
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculatrBrain.getBMI()
            
            
            destinationVC.color = calculatrBrain.getColor()
            destinationVC.advice = calculatrBrain.getAdvice()
        }
        }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

