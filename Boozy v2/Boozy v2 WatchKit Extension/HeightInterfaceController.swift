//
//  HeightInterfaceController.swift
//  Boozy v2 WatchKit Extension
//
//  Created by Austin Harshberger on 10/14/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import WatchKit
import Foundation


class HeightInterfaceController: WKInterfaceController {

    @IBOutlet var heightlabel: WKInterfaceLabel!
    var height = Int(5.2)
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        //pref 7 (height)
        let preferences7 = UserDefaults.standard
        let currentLevelKey7 = "currentLevel7"
        if preferences7.object(forKey: currentLevelKey7) == nil {
            //  Doesn't exist
        } else {
            let currentLevel7 = preferences7.integer(forKey: currentLevelKey7)
            height = currentLevel7
            let stringheight = String(height)
            heightlabel.setText(stringheight)
            
            
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
    
    @IBAction func heighttts() {
        
        self.presentTextInputController(withSuggestions: ["5","6","7"], allowedInputMode: WKTextInputMode.plain,
                                        completion:{(results) -> Void in
                                            let aResult = results?[0] as? String
                                            self.heightlabel.setText(aResult!)
                                            UserDefaults.standard.set(aResult, forKey: "username")

                                            let preferences7 = UserDefaults.standard
                                            let currentLevel7 = aResult
                                            let currentLevelKey7 = "currentLevel7"
                                            preferences7.set(currentLevel7, forKey: currentLevelKey7)
                                            preferences7.synchronize()
                                            if self.heightlabel.isEqual(" "){
                                                self.heightlabel.setText("🤷🏼‍♂️[long press!]")
                                            }
        })
        
        

    }
    
    @IBAction func donebuttonh() {
        
        self.dismiss()
    }
    
}
