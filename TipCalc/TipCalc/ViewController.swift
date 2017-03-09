//
//  ViewController.swift
//  TipCalc
//
//  Created by Radhakrishnan, Kathir on 3/7/17.
//  Copyright © 2017 Radhakrishnan, Kathir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tipLabel: UILabel!
    
    @IBOutlet var billField: UITextField!
    
    @IBOutlet var totalLabel: UILabel!
    
    @IBOutlet var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        
        // print ("Hello")
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPcts = [0.18, 0.2, 0.3]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPcts[tipControl.selectedSegmentIndex]
        let total = bill + tip
    
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        // Set default Tip Index
        let defaults = UserDefaults.standard
        
        tipControl.selectedSegmentIndex = defaults.object(forKey: "defaultTipIndex") as! Int

        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }


}

