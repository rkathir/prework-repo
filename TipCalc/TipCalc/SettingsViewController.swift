//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by Radhakrishnan, Kathir on 3/8/17.
//  Copyright © 2017 Radhakrishnan, Kathir. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var defaultTipPct: UISegmentedControl!
    
    @IBAction func setDefaultTipIndex(_ sender: Any) {
        
        let defaultTipIndex = defaultTipPct.selectedSegmentIndex
        
        
        let defaults = UserDefaults.standard
        
        defaults.set(defaultTipIndex, forKey: "defaultTipIndex")
        
        defaults.synchronize()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Set default Tip Index
        let defaults = UserDefaults.standard
        
        defaultTipPct.selectedSegmentIndex = defaults.object(forKey: "defaultTipIndex") as! Int
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
