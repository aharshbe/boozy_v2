//
//  InterfaceController.swift
//  Boozy v2 WatchKit Extension
//
//  Created by Austin Harshberger on 10/14/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    //Setting up local varibales for the drink counter function
    
    var incrementordrinks = 0
    var incrementorwater = 0
    var totalnumberofdrinksincrementor = 0
    var theirage = 0
    var theirweight = 0
    var theirgender = 0
    var maleorfemale = "boy"
    var theirheight = Int(5.2)
    var alcoholingrams = 0
    var wine = 0
    var shot = 0
    var beer = 0
    var cocktail = 0
    var bloodallevel = 0.0
    var malerawnumber = 0.0
    var malegenderconstant = 0.0
    var femalegenderconstant = 0.0
    var femalerawnumber = 0.0
    var winegrams = 0
    var beergrams = 0
    var shotgrams = 0
    var cocktailgrams = 0
    
    @IBOutlet var numberofdrinks: WKInterfaceLabel!

    @IBOutlet var numberofwaterleft: WKInterfaceLabel!
    
    @IBOutlet var totalnumberofdrinks: WKInterfaceLabel!
    
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        //pref 1 (incrementor incrementor water )
        let preferences = UserDefaults.standard
        let currentLevelKey = "currentLevel"
        if preferences.object(forKey: currentLevelKey) == nil {
            //  Doesn't exist
        } else {
            let currentLevel = preferences.integer(forKey: currentLevelKey)
            let strIn1sharedprefs = String(currentLevel)
            numberofwaterleft.setText(strIn1sharedprefs)
            incrementorwater = currentLevel
        }
//        pref 2 (BAL)
        let preferences2 = UserDefaults.standard
        let currentLevelKey2 = "currentLevel2"
        if preferences2.object(forKey: currentLevelKey2) == nil {
            
        } else {
            let currentLevel2 = preferences2.integer(forKey: currentLevelKey2)
            bloodallevel = Double(currentLevel2)
        }
        //pref 3 (incrementor for total drinks)
//        let preferences3 = UserDefaults.standard
//        let currentLevelKey3 = "currentLevel3"
//        if preferences3.object(forKey: currentLevelKey3) == nil {
//            //  Doesn't exist
//        } else {
//            let currentLevel3 = preferences3.integer(forKey: currentLevelKey3)
//            totalnumberofdrinksincrementor = currentLevel3
//
//
//        }
    
        //pref 4 (age)
        let preferences4 = UserDefaults.standard
        let currentLevelKey4 = "currentLevel4"
        if preferences4.object(forKey: currentLevelKey4) == nil {
            //  Doesn't exist
        } else {
            let currentLevel4 = preferences4.integer(forKey: currentLevelKey4)
            theirage = currentLevel4
            
            
        }
        
        //pref 5 (weight)
        let preferences5 = UserDefaults.standard
        let currentLevelKey5 = "currentLevel5"
        if preferences5.object(forKey: currentLevelKey5) == nil {
            //  Doesn't exist
        } else {
            let currentLevel5 = preferences5.integer(forKey: currentLevelKey5)
            theirweight = currentLevel5
            
            
        }
        
        //pref 6 (Gender)
        let preferences6 = UserDefaults.standard
        let currentLevelKey6 = "currentLevel6"
        if preferences6.object(forKey: currentLevelKey6) == nil {
            //  Doesn't exist
        } else {
            let currentLevel6 = preferences6.integer(forKey: currentLevelKey6)
            theirgender = currentLevel6
            
            if theirgender == 0 {
                
                maleorfemale = "boy 👱🏼";
                
            }else if theirgender == 1 {
                
                maleorfemale = "girl 👩🏼";
                
            }
        }
        
        //pref 7 (height)
        let preferences7 = UserDefaults.standard
        let currentLevelKey7 = "currentLevel7"
        if preferences7.object(forKey: currentLevelKey7) == nil {
            //  Doesn't exist
        } else {
            let currentLevel7 = preferences7.integer(forKey: currentLevelKey7)
            theirheight = currentLevel7
            
            
        }
        
        //pref 8 (wine)
        let preferences8 = UserDefaults.standard
        let currentLevelKey8 = "currentLevel8"
        if preferences8.object(forKey: currentLevelKey8) == nil {
            //  Doesn't exist
        } else {
            let currentLevel8 = preferences8.integer(forKey: currentLevelKey8)
            wine = currentLevel8
            
            
        }
        
        //pref 9 (shot)
        let preferences9 = UserDefaults.standard
        let currentLevelKey9 = "currentLevel9"
        if preferences9.object(forKey: currentLevelKey9) == nil {
            //  Doesn't exist
        } else {
            let currentLevel9 = preferences9.integer(forKey: currentLevelKey9)
            shot = currentLevel9
            
            
        }
        
        //pref 10 (beer)
        let preferences10 = UserDefaults.standard
        let currentLevelKey10 = "currentLevel10"
        if preferences10.object(forKey: currentLevelKey10) == nil {
            //  Doesn't exist
        } else {
            let currentLevel10 = preferences10.integer(forKey: currentLevelKey10)
            beer = currentLevel10
            
            
        }
        
        //pref 11 (cocktail)
        let preferences11 = UserDefaults.standard
        let currentLevelKey11 = "currentLevel11"
        if preferences11.object(forKey: currentLevelKey11) == nil {
            //  Doesn't exist
        } else {
            let currentLevel11 = preferences11.integer(forKey: currentLevelKey11)
            cocktail = currentLevel11
            
            
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
    

    
    @IBAction func ihadwaterclick() {
        
        if incrementorwater > 0{
        
        incrementorwater = incrementorwater - 1
        let incrementorwaterstring = String(incrementorwater)
        numberofwaterleft.setText(incrementorwaterstring)
        
        let preferences = UserDefaults.standard
        let currentLevel = incrementorwater
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
        preferences.synchronize()
            
        }
        
    }
   
    
    @IBAction func clickingReset() {
        let h0 = {
            
            self.incrementorwater = 0
            
            let incrementorwaterstring = String(self.incrementorwater)
            self.numberofwaterleft.setText(incrementorwaterstring)
        
            
            
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

    
    
    @IBAction func clickingmyinfp() {
        let h0 = {}
        let h1 = {
            //pref 1 (incrementor incrementor water )
            let preferences = UserDefaults.standard
            let currentLevelKey = "currentLevel"
            if preferences.object(forKey: currentLevelKey) == nil {
                //  Doesn't exist
            } else {
                let currentLevel = preferences.integer(forKey: currentLevelKey)
                let strIn1sharedprefs = String(currentLevel)
                self.numberofwaterleft.setText(strIn1sharedprefs)
                self.incrementorwater = currentLevel
            }
            //        pref 2 (BAL)
            let preferences2 = UserDefaults.standard
            let currentLevelKey2 = "currentLevel2"
            if preferences2.object(forKey: currentLevelKey2) == nil {
   
            } else {
                let currentLevel2 = preferences2.integer(forKey: currentLevelKey2)
                self.bloodallevel = Double(currentLevel2)
            }
            //pref 4 (age)
            let preferences4 = UserDefaults.standard
            let currentLevelKey4 = "currentLevel4"
            if preferences4.object(forKey: currentLevelKey4) == nil {
                //  Doesn't exist
            } else {
                let currentLevel4 = preferences4.integer(forKey: currentLevelKey4)
                self.self.theirage = currentLevel4
                
                
            }
            
            //pref 5 (weight)
            let preferences5 = UserDefaults.standard
            let currentLevelKey5 = "currentLevel5"
            if preferences5.object(forKey: currentLevelKey5) == nil {
                //  Doesn't exist
            } else {
                let currentLevel5 = preferences5.integer(forKey: currentLevelKey5)
                self.theirweight = currentLevel5
                
                
            }
            
            //pref 6 (Gender)
            let preferences6 = UserDefaults.standard
            let currentLevelKey6 = "currentLevel6"
            if preferences6.object(forKey: currentLevelKey6) == nil {
                //  Doesn't exist
            } else {
                let currentLevel6 = preferences6.integer(forKey: currentLevelKey6)
                self.theirgender = currentLevel6
                
                if self.theirgender == 0 {
                    
                    self.maleorfemale = "boy 👱🏼";
                    
                }else if self.self.theirgender == 1 {
                    
                    self.maleorfemale = "girl 👩🏼";
                    
                }
            }
            
            //pref 7 (height)
            let preferences7 = UserDefaults.standard
            let currentLevelKey7 = "currentLevel7"
            if preferences7.object(forKey: currentLevelKey7) == nil {
                //  Doesn't exist
            } else {
                let currentLevel7 = preferences7.integer(forKey: currentLevelKey7)
                self.theirheight = currentLevel7
                
                
            }
            
        }
      
        let action1 = WKAlertAction(title: "Okay👌🏼", style: .default, handler:h0)
        let action2 = WKAlertAction(title: "Sync🔄", style: .default, handler:h1)
        presentAlert(withTitle: "Your Info:", message: "You are \(theirage) years young. You weigh \(theirweight) pounds. You are a \(maleorfemale). You are \(theirheight) feet tall.", preferredStyle: .sideBySideButtonsAlert, actions: [action1, action2])
        
    
    }
    
    
    
    @IBAction func longpressresetdrinkscount(_ sender: Any) {
    
        self.totalnumberofdrinksincrementor = 0
        let preferences3 = UserDefaults.standard
        let currentLevel3 = self.totalnumberofdrinksincrementor
        let currentLevelKey3 = "currentLevel3"
        preferences3.set(currentLevel3, forKey: currentLevelKey3)
        preferences3.synchronize()
        
        let action1 = WKAlertAction(title: "Thank you.", style: .default){}
        presentAlert(withTitle: "ℹ️", message: "Lifetime drinks reset!", preferredStyle: .alert, actions: [action1])
        
    }
    
    
    @IBAction func summaryButton() {
        
       
        if wine > 0 {
            winegrams = wine * 14
        }
        
        if shot > 0 {
            shotgrams = shot * 14
        }
        
        if beer > 0 {
            beergrams = beer * 14
        }
        
        if cocktail > 0 {
            cocktailgrams = cocktail * 14
        }
        
        
        alcoholingrams = winegrams + shotgrams + beergrams + cocktailgrams
        
        if theirgender == 0 {
            
            /*
             
             % BAC = (A x 5.14 / W x r) – .015 x H
             
             A = liquid ounces of alcohol consumed
             W = a person’s weight in pounds
             r = a gender constant of alcohol distribution (.73 for men and .66 for women)*
             H = hours elapsed since drinking commenced
             
             */

            if alcoholingrams > 0 {
            
            let p1 = Double(alcoholingrams) * 5.14
            let p2 = Double(theirweight) * 0.73
            
            bloodallevel = p1 / p2 - (0.15 * 3)
            
            let preferences2 = UserDefaults.standard
            let currentLevel2 = bloodallevel
            let currentLevelKey2 = "currentLevel2"
            preferences2.set(currentLevel2, forKey: currentLevelKey2)
            preferences2.synchronize()
            
            }else {
                
                bloodallevel = 0
            }
            
            
            
        }else if theirgender == 1 {
            
            /*
             
             % BAC = (A x 5.14 / W x r) – .015 x H
             
             A = liquid ounces of alcohol consumed
             W = a person’s weight in pounds
             r = a gender constant of alcohol distribution (.73 for men and .66 for women)*
             H = hours elapsed since drinking commenced
             
             */
            
            if alcoholingrams > 0 {
            
            let p1 = Double(alcoholingrams) * 5.14
            let p2 = Double(theirweight) * 0.66
            
            bloodallevel = p1 / p2 - (0.15 * 3)
            
            let preferences2 = UserDefaults.standard
            let currentLevel2 = bloodallevel
            let currentLevelKey2 = "currentLevel2"
            preferences2.set(currentLevel2, forKey: currentLevelKey2)
            preferences2.synchronize()
            
            } else {
                
                bloodallevel = 0
            }
            
            
        }
        
        
        let h0 = {}
        let h1 = {
            //pref 1 (incrementor incrementor water )
            let preferences = UserDefaults.standard
            let currentLevelKey = "currentLevel"
            if preferences.object(forKey: currentLevelKey) == nil {
                //  Doesn't exist
            } else {
                let currentLevel = preferences.integer(forKey: currentLevelKey)
                let strIn1sharedprefs = String(currentLevel)
                self.numberofwaterleft.setText(strIn1sharedprefs)
                self.incrementorwater = currentLevel
            }
            //        pref 2 (BAL)
            let preferences2 = UserDefaults.standard
            let currentLevelKey2 = "currentLevel2"
            if preferences2.object(forKey: currentLevelKey2) == nil {
                //  Doesn't exist
            } else {
                let currentLevel2 = preferences2.integer(forKey: currentLevelKey2)
                self.bloodallevel = Double(currentLevel2)
            }
            
            //pref 4 (age)
            let preferences4 = UserDefaults.standard
            let currentLevelKey4 = "currentLevel4"
            if preferences4.object(forKey: currentLevelKey4) == nil {
                //  Doesn't exist
            } else {
                let currentLevel4 = preferences4.integer(forKey: currentLevelKey4)
                self.self.theirage = currentLevel4
                
                
            }
            
            //pref 5 (weight)
            let preferences5 = UserDefaults.standard
            let currentLevelKey5 = "currentLevel5"
            if preferences5.object(forKey: currentLevelKey5) == nil {
                //  Doesn't exist
            } else {
                let currentLevel5 = preferences5.integer(forKey: currentLevelKey5)
                self.theirweight = currentLevel5
                
                
            }
            
            //pref 6 (Gender)
            let preferences6 = UserDefaults.standard
            let currentLevelKey6 = "currentLevel6"
            if preferences6.object(forKey: currentLevelKey6) == nil {
                //  Doesn't exist
            } else {
                let currentLevel6 = preferences6.integer(forKey: currentLevelKey6)
                self.theirgender = currentLevel6
                
                if self.theirgender == 0 {
                    
                    self.maleorfemale = "boy 👱🏼";
                    
                }else if self.self.theirgender == 1 {
                    
                    self.maleorfemale = "girl 👩🏼";
                    
                }
            }
            
            //pref 7 (height)
            let preferences7 = UserDefaults.standard
            let currentLevelKey7 = "currentLevel7"
            if preferences7.object(forKey: currentLevelKey7) == nil {
                //  Doesn't exist
            } else {
                let currentLevel7 = preferences7.integer(forKey: currentLevelKey7)
                self.theirheight = currentLevel7
                
                
            }
            
            //pref 8 (wine)
            let preferences8 = UserDefaults.standard
            let currentLevelKey8 = "currentLevel8"
            if preferences8.object(forKey: currentLevelKey8) == nil {
                //  Doesn't exist
            } else {
                let currentLevel8 = preferences8.integer(forKey: currentLevelKey8)
                self.wine = currentLevel8
                
                
            }
            
            //pref 9 (shot)
            let preferences9 = UserDefaults.standard
            let currentLevelKey9 = "currentLevel9"
            if preferences9.object(forKey: currentLevelKey9) == nil {
                //  Doesn't exist
            } else {
                let currentLevel9 = preferences9.integer(forKey: currentLevelKey9)
                self.shot = currentLevel9
                
                
            }
            
            //pref 10 (beer)
            let preferences10 = UserDefaults.standard
            let currentLevelKey10 = "currentLevel10"
            if preferences10.object(forKey: currentLevelKey10) == nil {
                //  Doesn't exist
            } else {
                let currentLevel10 = preferences10.integer(forKey: currentLevelKey10)
                self.beer = currentLevel10
                
                
            }
            
            //pref 11 (cocktail)
            let preferences11 = UserDefaults.standard
            let currentLevelKey11 = "currentLevel11"
            if preferences11.object(forKey: currentLevelKey11) == nil {
                //  Doesn't exist
            } else {
                let currentLevel11 = preferences11.integer(forKey: currentLevelKey11)
                self.cocktail = currentLevel11
                
                
            }
        }
        let action1 = WKAlertAction(title: "Okay👌🏼", style: .default, handler:h0)
        let action2 = WKAlertAction(title: "Sync🔄", style: .default, handler:h1)
        presentAlert(withTitle: "You've had: \(wine + shot + beer + cocktail) drinks", message: "\(wine) 🍷 \n \(shot) 🥃 \n \(beer) 🍺 \n \(cocktail) 🍸. \n In 3 hours, your BAL will be: \(bloodallevel).", preferredStyle: .sideBySideButtonsAlert, actions: [action1, action2])
        
    }
  
    
}
