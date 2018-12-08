//
//  ViewController.swift
//  MacCalculator
//
//  Created by Crypto on 12/8/18.
//  Copyright © 2018 Crypto. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var viewNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    var newOperation = true
    func addNumbers (number: String){
        var textNumber = viewNumberLabel.text!
        if newOperation {
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        viewNumberLabel.text = textNumber
        
    }
    
    
    @IBAction func button0Pressed(_ sender: Any) {
        addNumbers(number: "0")
    }
    
    @IBAction func buttonDotPressed(_ sender: Any) {
        addNumbers(number: ".")
    }
    
    @IBAction func button1Pressed(_ sender: Any) {
        addNumbers(number: "1")
    }
    @IBAction func button2Pressed(_ sender: Any) {
        addNumbers(number: "2")
    }
    @IBAction func button3Pressed(_ sender: Any) {
        addNumbers(number: "3")
    }
    @IBAction func button4Pressed(_ sender: Any) {
        addNumbers(number: "4")
    }
    @IBAction func button5Pressed(_ sender: Any) {
        addNumbers(number: "5")
    }
    @IBAction func button6Pressed(_ sender: Any) {
        addNumbers(number: "6")
    }
    @IBAction func button7Pressed(_ sender: Any) {
        addNumbers(number: "7")
    }
    @IBAction func button8Pressed(_ sender: Any) {
        addNumbers(number: "8")
    }
    @IBAction func button9Pressed(_ sender: Any) {
        addNumbers(number: "9")
    }
    
    var op = "+"
    var number1 : Double?
    
    @IBAction func buttonDivissionPressed(_ sender: Any) {
        op = "/"
        number1 = Double (viewNumberLabel.text!)
        newOperation = true
    }
    @IBAction func buttonMultiplicationPressed(_ sender: Any) {
        op = "*"
        number1 = Double (viewNumberLabel.text!)
        newOperation = true
    }
    @IBAction func buttonSubstractionPressed(_ sender: Any) {
        op = "-"
        number1 = Double (viewNumberLabel.text!)
        newOperation = true
    }
    @IBAction func buttonAdditionPressed(_ sender: Any) {
        op = "+"
        number1 = Double (viewNumberLabel.text!)
        newOperation = true
        
    }
    @IBAction func buttonEqualPressed(_ sender: Any) {
        let number2 = Double (viewNumberLabel.text!)
        var results : Double?
        switch op {
        case "*":
            results = number1! * number2!
        case "+":
            results = number1! + number2!
        case "-":
            results = number1! - number2!
        case "/":
            results = number1! / number2!
        default:
            results = 0.0
        }
        viewNumberLabel.text = String(results!)
        newOperation = true
    }
    @IBAction func buttonModulusPressed(_ sender: Any) {
        number1 = Double (viewNumberLabel.text!)
        number1 = number1! / 100
        viewNumberLabel.text = String (number1!)
        newOperation = true
    }
    @IBAction func buttonSignPressed(_ sender: Any) {
        number1 = Double(viewNumberLabel.text!)
        number1 = number1! * -1
        viewNumberLabel.text = String (number1!)
        newOperation = true
    }
    @IBAction func buttonClearPressed(_ sender: Any) {
        viewNumberLabel.text = "0"
        newOperation = true
    }
    
}



