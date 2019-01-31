//
//  ViewController.swift
//  Tippy
//
//  Created by Agrawal, Amit on 1/27/19.
//  Copyright © 2019 harsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calcualteTip(_ sender: Any) {
        //get bill amount
        let bill = Double(billField.text!) ?? 0
        
        // caluctate tip and total
        let tipPercentages = [0.15,0.18,0.22]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total=bill+tip
        //update tip and total
        //tipLabel.text="$\(tip)"
        tipLabel.text=String(format:"$%.2f",tip)
        totalLabel.text=String(format:"$%.2f",total)
    }
    
}

