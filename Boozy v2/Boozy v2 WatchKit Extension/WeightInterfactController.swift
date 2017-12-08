//
//  WeightInterfactController.swift
//  Boozy v2 WatchKit Extension
//
//  Created by Austin Harshberger on 10/14/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import UIKit
import WatchKit

class WeightInterfactController: WKInterfaceController {
    
    
    @IBOutlet var weightcounter: WKInterfaceLabel!
    var weight = 120;
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        //pref 5 (weight)
        let preferences5 = UserDefaults.standard
        let currentLevelKey5 = "currentLevel5"
        if preferences5.object(forKey: currentLevelKey5) == nil {
            //  Doesn't exist
            weight = 120;
        } else {
            let currentLevel5 = preferences5.integer(forKey: currentLevelKey5)
            weight = currentLevel5
            
            let stringweight = String(weight)
            weightcounter.setText(stringweight)
            
            
        }
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be
        // visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer
        // visible
        super.didDeactivate()
    }
    
    
    @IBAction func addingweight() {
        
        weight = weight + 1
        let weightstring = String(weight)
        weightcounter.setText(weightstring)
        
        //Creating shared prefersnces to store weight across application
        
        let preferences5 = UserDefaults.standard
        let currentLevel5 = self.weight
        let currentLevelKey5 = "currentLevel5"
        preferences5.set(currentLevel5, forKey: currentLevelKey5)
        preferences5.synchronize()
    }
    
    @IBAction func subtractweight() {
        
        weight = weight - 1
        let weightstring = String(weight)
        weightcounter.setText(weightstring)
        
         //Creating shared prefersnces to store weight across application
        
        let preferences5 = UserDefaults.standard
        let currentLevel5 = self.weight
        let currentLevelKey5 = "currentLevel5"
        preferences5.set(currentLevel5, forKey: currentLevelKey5)
        preferences5.synchronize()
    }
    
    @IBAction func donebuttonw() {
        self.dismiss()
    }
    
    
}
