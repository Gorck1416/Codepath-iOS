//
//  ViewController.swift
//  Prework
//
//  Created by loaner on 1/14/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var amtOfPeopleTextField: UITextField!
    @IBOutlet weak var totalBillSplitLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amt from text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get group size to spilt bill
        let size = Double(amtOfPeopleTextField.text!) ?? 0
        
        //Get total tip by bill * tip%
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //total bill split
        let totalSplitBill = total/size
        
        //Update tip amt label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //update total amt label
        totalLabel.text = String(format: "$%.2f", total)
        //update split bill total
        totalBillSplitLabel.text = String(format:"$%.2f", totalSplitBill)
        
    }
    
}

