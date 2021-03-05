//
//  ViewController.swift
//  Calculadora
//
//  Created by Jesus Sierra on 04/03/21.
//

import UIKit

class ViewController: UIViewController {

    var numPan: Int = 0
    var numAnt: Int = 0
    var operacion: String=""
    var resultado: Int = 0
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func borrar(_ sender: Any) {
        displayLabel.text = "0"
        numPan = 0
        numAnt = 0
        operacion = ""
        resultado = 0
    }
    
    @IBAction func proscessNumber(_ sender: UIButton){
        if let numberText = sender.titleLabel?.text{
            if (displayLabel.text == "0") {
                displayLabel.text = numberText
                numPan = Int(displayLabel.text!)!
            }else if (displayLabel.text == "+"){
                displayLabel.text=numberText
                numPan=Int(displayLabel.text!)!
            } else {
                displayLabel.text = displayLabel.text! + numberText
                numPan = Int(displayLabel.text!)!
            }
        }
    }
    
    @IBAction func processOperacion(_ sender: UIButton) {
        numAnt = numPan
        print("Número anterior ", numAnt)
        if let numberText = sender.titleLabel?.text {
            if (numberText == "+") {
                displayLabel.text = numberText
                operacion = numberText
            }
        }
    }
    
    @IBAction func igual (_ sender: UIButton){
        if let numberText = sender.titleLabel?.text {
            if (numberText == "=" && numAnt != nil && numberText != nil) {
                if (operacion == "+") {
                    numPan = (numAnt + numPan)
                    displayLabel.text = String(numPan)
                }
            }
        }
    }
}

