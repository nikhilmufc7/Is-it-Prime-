//
//  ViewController.swift
//  Is it Prime?
//
//  Created by Nikhil Singh on 20/05/17.
//  Copyright © 2017 Nikhil Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    
    @IBAction func IsitPrime(_ sender: AnyObject) {
        
        if let userEnteredString = numberTextField.text {
        
        let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
            
                var isPrime = true
                
                var i = 2
                
                if number == 1 {
                    
                    isPrime = false
                }
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        
                        isPrime = false
                    }
                    
                    i += 1
                    
                    
                }
                
                if isPrime {
                resultLable.text = "\(number) is prime"
                }else {
                resultLable.text = "\(number) is not prime"
                }
            
            } else {
            resultLable.text = "Please enter a positive whole number"
            }
        
        }
        
    }
    
    @IBOutlet weak var resultLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

