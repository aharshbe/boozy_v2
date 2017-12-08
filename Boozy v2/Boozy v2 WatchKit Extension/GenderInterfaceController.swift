//
//  GenderInterfaceController.swift
//  Boozy v2 WatchKit Extension
//
//  Created by Austin Harshberger on 10/14/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import WatchKit
import Foundation


class GenderInterfaceController: WKInterfaceController {
    
    @IBOutlet var malebutton: WKInterfaceButton!
    @IBOutlet var femalebutton: WKInterfaceButton!
    
    var gender = 0;
    var maleorfemale = "boy";

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        //pref 6 (Gender)
        let preferences6 = UserDefaults.standard
        let currentLevelKey6 = "currentLevel6"
        if preferences6.object(forKey: currentLevelKey6) == nil {
            //  Doesn't exist
        } else {
            let currentLevel6 = preferences6.integer(forKey: currentLevelKey6)
            gender = currentLevel6
            
            if gender == 0 {
                
                maleorfemale = "boy 👱🏼";
                malebutton.setBackgroundColor(UIColor.blue)
                
                
                
            }else if gender == 1 {
                
                maleorfemale = "girl 👩🏼";
                femalebutton.setBackgroundColor(UIColor.blue)
               
                
            }
        }
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func male() {
        
        gender = 0;
        
        let preferences6 = UserDefaults.standard
        let currentLevel6 = self.gender
        let currentLevelKey6 = "currentLevel6"
        preferences6.set(currentLevel6, forKey: currentLevelKey6)
        preferences6.synchronize()
        
        malebutton.setBackgroundColor(UIColor.blue)
        femalebutton.setBackgroundColor(UIColor.clear)
        self.dismiss()
       
        
        
    }
    
    @IBAction func female() {
        
       gender =  1;
        
        let preferences6 = UserDefaults.standard
        let currentLevel6 = self.gender
        let currentLevelKey6 = "currentLevel6"
        preferences6.set(currentLevel6, forKey: currentLevelKey6)
        preferences6.synchronize()
        
        femalebutton.setBackgroundColor(UIColor.blue)
         malebutton.setBackgroundColor(UIColor.clear)
        self.dismiss()
    }
    

}
