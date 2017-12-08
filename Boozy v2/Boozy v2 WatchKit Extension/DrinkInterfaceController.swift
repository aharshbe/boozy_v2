//
//  DrinkInterfaceController.swift
//  Boozy v2 WatchKit Extension
//
//  Created by Austin Harshberger on 10/15/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import WatchKit
import Foundation


class DrinkInterfaceController: WKInterfaceController {
    
    var winecounter = 0
    var shotcounter = 0
    var beercounter = 0
    var cocktailcounter = 0
    var bloodallevel = 0.0
    var incrementorwater = 0
    
    @IBOutlet var winelabel: WKInterfaceLabel!
    @IBOutlet var shotlabel: WKInterfaceLabel!
    @IBOutlet var beerlabel: WKInterfaceLabel!
    @IBOutlet var cocktaillabel: WKInterfaceLabel!
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        //pref 1 (wine)
        let preferences8 = UserDefaults.standard
        let currentLevelKey8 = "currentLevel8"
        if preferences8.object(forKey: currentLevelKey8) == nil {
            //  Doesn't exist
        } else {
            let currentLevel8 = preferences8.integer(forKey: currentLevelKey8)
            winecounter = currentLevel8
            let stringwinecounter = String(winecounter)
            winelabel.setText("\(stringwinecounter) x 🍷")
            
            
        }
        
        //pref 2 (shot)
        let preferences9 = UserDefaults.standard
        let currentLevelKey9 = "currentLevel9"
        if preferences9.object(forKey: currentLevelKey9) == nil {
            //  Doesn't exist
        } else {
            let currentLevel9 = preferences9.integer(forKey: currentLevelKey9)
            shotcounter = currentLevel9
            let stringshotcounter = String(shotcounter)
            shotlabel.setText("\(stringshotcounter) x 🥃")
            
            
        }
        
        //pref 3 (beer)
        let preferences10 = UserDefaults.standard
        let currentLevelKey10 = "currentLevel10"
        if preferences10.object(forKey: currentLevelKey10) == nil {
            //  Doesn't exist
        } else {
            let currentLevel10 = preferences10.integer(forKey: currentLevelKey10)
            beercounter = currentLevel10
            let stringbeercounter = String(beercounter)
            beerlabel.setText("\(stringbeercounter) x 🍺")
            
            
        }
        
        //pref 4 (cocktail)
        let preferences11 = UserDefaults.standard
        let currentLevelKey11 = "currentLevel11"
        if preferences11.object(forKey: currentLevelKey11) == nil {
            //  Doesn't exist
        } else {
            let currentLevel11 = preferences11.integer(forKey: currentLevelKey11)
            cocktailcounter = currentLevel11
            let stringcocktailcounter = String(cocktailcounter)
            cocktaillabel.setText("\(stringcocktailcounter) x 🍸")
            
        }
        
        //        pref 5 (BAL)
        let preferences2 = UserDefaults.standard
        let currentLevelKey2 = "currentLevel2"
        if preferences2.object(forKey: currentLevelKey2) == nil {
            //  Doesn't exist
        } else {
            let currentLevel2 = preferences2.integer(forKey: currentLevelKey2)
            bloodallevel = Double(currentLevel2)
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
    
    @IBAction func chosewine() {
        
        winecounter = winecounter + 1
        let stringwinecounter = String(winecounter)
        winelabel.setText("\(stringwinecounter) x 🍷")
        
        let preferences8 = UserDefaults.standard
        let currentLevel8 = winecounter
        let currentLevelKey8 = "currentLevel8"
        preferences8.set(currentLevel8, forKey: currentLevelKey8)
        preferences8.synchronize()
       
        incrementorwater = incrementorwater + 1
        let preferences = UserDefaults.standard
        let currentLevel = incrementorwater
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()
        
        
    }
    
    @IBAction func choseshot() {
        
        shotcounter = shotcounter + 1
        let stringshotcounter = String(shotcounter)
        shotlabel.setText("\(stringshotcounter) x 🥃")
        let preferences9 = UserDefaults.standard
        let currentLevel9 = shotcounter
        let currentLevelKey9 = "currentLevel9"
        preferences9.set(currentLevel9, forKey: currentLevelKey9)
        preferences9.synchronize()
        
        incrementorwater = incrementorwater + 1
        let preferences = UserDefaults.standard
        let currentLevel = incrementorwater
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()
        
    }
    
    @IBAction func chosebeer() {
        
        beercounter = beercounter + 1
        let stringbeercounter = String(beercounter)
        beerlabel.setText("\(stringbeercounter) x 🍺")
        let preferences10 = UserDefaults.standard
        let currentLevel10 = beercounter
        let currentLevelKey10 = "currentLevel10"
        preferences10.set(currentLevel10, forKey: currentLevelKey10)
        preferences10.synchronize()
        
        incrementorwater = incrementorwater + 1
        let preferences = UserDefaults.standard
        let currentLevel = incrementorwater
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()
        
    }
    
    @IBAction func chosecocktail() {
        
        cocktailcounter = cocktailcounter + 1
        let stringcocktailcounter = String(cocktailcounter)
        cocktaillabel.setText("\(stringcocktailcounter) x 🍸")
        let preferences11 = UserDefaults.standard
        let currentLevel11 = cocktailcounter
        let currentLevelKey11 = "currentLevel11"
        preferences11.set(currentLevel11, forKey: currentLevelKey11)
        preferences11.synchronize()
        
        incrementorwater = incrementorwater + 1
        let preferences = UserDefaults.standard
        let currentLevel = incrementorwater
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()
        
    }
    
    
    @IBAction func resetbuttonfordrinks() {
        
        
        let h0 = {
            
            self.winecounter = 0
            self.shotcounter = 0
            self.beercounter = 0
            self.cocktailcounter = 0
            self.bloodallevel = 0.0
            self.incrementorwater = 0
            
            let stringwinecounter = String(self.winecounter)
            let stringcocktailcounter = String(self.cocktailcounter)
            let stringshotcounter = String(self.shotcounter)
            let stringbeercounter = String(self.beercounter)
            
            let preferences2 = UserDefaults.standard
            let currentLevel2 = Double(self.bloodallevel)
            let currentLevelKey2 = "currentLevel2"
            preferences2.set(currentLevel2, forKey: currentLevelKey2)
            preferences2.synchronize()
            
            self.winelabel.setText("\(stringwinecounter) x 🍷")
            let preferences8 = UserDefaults.standard
            let currentLevel8 = self.winecounter
            let currentLevelKey8 = "currentLevel8"
            preferences8.set(currentLevel8, forKey: currentLevelKey8)
            preferences8.synchronize()
            
            self.shotlabel.setText("\(stringshotcounter) x 🥃")
            let preferences9 = UserDefaults.standard
            let currentLevel9 = self.shotcounter
            let currentLevelKey9 = "currentLevel9"
            preferences9.set(currentLevel9, forKey: currentLevelKey9)
            preferences9.synchronize()
            
            self.beerlabel.setText("\(stringbeercounter) x 🍺")
            let preferences10 = UserDefaults.standard
            let currentLevel10 = self.beercounter
            let currentLevelKey10 = "currentLevel10"
            preferences10.set(currentLevel10, forKey: currentLevelKey10)
            preferences10.synchronize()
            
            
            self.cocktaillabel.setText("\(stringcocktailcounter) x 🍸")
            let preferences11 = UserDefaults.standard
            let currentLevel11 = self.cocktailcounter
            let currentLevelKey11 = "currentLevel11"
            preferences11.set(currentLevel11, forKey: currentLevelKey11)
            preferences11.synchronize()
            
            let preferences = UserDefaults.standard
            let currentLevel = self.incrementorwater
            let currentLevelKey = "currentLevel"
            preferences.set(currentLevel, forKey: currentLevelKey)
            preferences.synchronize()
            
        }
        
        let action1 = WKAlertAction(title: "Okay, 👌🏼", style: .default, handler:h0)
        let action2 = WKAlertAction(title: "No thanks.", style: .destructive){}
        
        
        presentAlert(withTitle: "Hello, 💁🏼‍♂️", message: "Are you sure you'd like to reset drinks?", preferredStyle: .alert, actions: [action1, action2])

    
    
}
}
