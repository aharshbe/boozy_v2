//
//  AgeInterfaceController.swift
//  Boozy v2 WatchKit Extension
//
//  Created by Austin Harshberger on 10/14/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import UIKit
import WatchKit

class AgeInterfaceController: WKInterfaceController {
    
    @IBOutlet var agecounter: WKInterfaceLabel!
    @IBOutlet var warning: WKInterfaceLabel!
    var age = 0;
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        //pref 4 (age)
        let preferences4 = UserDefaults.standard
        let currentLevelKey4 = "currentLevel4"
        if preferences4.object(forKey: currentLevelKey4) == nil {
            //  Doesn't exist
            
            age = 21;
        
        } else {
            let currentLevel4 = preferences4.integer(forKey: currentLevelKey4)
            age = currentLevel4
            
            let stringage = String(age)
            agecounter.setText(stringage)
            
            
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
    
    
    //Setting up buttons
    @IBAction func addingtoage() {
        
        age = age + 1
        let stringage = String(age)
        agecounter.setText(stringage)
        
        if age > 21 {
            
            warning.setText("")
            
        }
        
        //Creating shared prefersnces to store age across application
        
        let preferences4 = UserDefaults.standard
        let currentLevel4 = self.age
        let currentLevelKey4 = "currentLevel4"
        preferences4.set(currentLevel4, forKey: currentLevelKey4)
        preferences4.synchronize()
        
        
    }
    
    @IBAction func subtractingage() {
        
        age = age - 1
        let stringage = String(age)
        agecounter.setText(stringage)
        
        if age < 21 {
            
            warning.setText("In the United States, you must be 21 or older to drink. Please drink responsibly.")
            
            let action1 = WKAlertAction(title: "Thank you.", style: .default){}
            
            
            presentAlert(withTitle: "⚠️ WARNING ⚠️", message: "In the United States, you must be 21 or older to drink. Please drink responsibly.", preferredStyle: .alert, actions: [action1])
           
            }
        
        //Creating shared prefersnces to store age across application
        
        let preferences4 = UserDefaults.standard
        let currentLevel4 = self.age
        let currentLevelKey4 = "currentLevel4"
        preferences4.set(currentLevel4, forKey: currentLevelKey4)
        preferences4.synchronize()
            
    }
        
        
    @IBAction func donebuttona() {
        
        self.dismiss()
    }
    
    
    
    

}
