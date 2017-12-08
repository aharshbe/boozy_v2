//
//  DrinkingExpInterfaceController.swift
//  Boozy v2 WatchKit Extension
//
//  Created by Austin Harshberger on 10/20/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import WatchKit
import Foundation


class DrinkingExpInterfaceController: WKInterfaceController {

    @IBOutlet var NovButtonRef: WKInterfaceButton!
    @IBOutlet var AdvButtonRef: WKInterfaceButton!
    @IBOutlet var ProfButtonRef: WKInterfaceButton!
    @IBOutlet var CompButtonRef: WKInterfaceButton!
    @IBOutlet var ExperButtonRef: WKInterfaceButton!
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func NoviceButton() {
        
        NovButtonRef.setBackgroundColor(UIColor.blue)
        AdvButtonRef.setBackgroundColor(UIColor.clear)
        ProfButtonRef.setBackgroundColor(UIColor.clear)
        CompButtonRef.setBackgroundColor(UIColor.clear)
        ExperButtonRef.setBackgroundColor(UIColor.clear)
    }
    
    @IBAction func AdvBegButton() {
        
        AdvButtonRef.setBackgroundColor(UIColor.blue)
        NovButtonRef.setBackgroundColor(UIColor.clear)
        ProfButtonRef.setBackgroundColor(UIColor.clear)
        CompButtonRef.setBackgroundColor(UIColor.clear)
        ExperButtonRef.setBackgroundColor(UIColor.clear)
    }
    
    @IBAction func ProfButton() {
        
        NovButtonRef.setBackgroundColor(UIColor.clear)
        AdvButtonRef.setBackgroundColor(UIColor.clear)
        ProfButtonRef.setBackgroundColor(UIColor.blue)
        CompButtonRef.setBackgroundColor(UIColor.clear)
        ExperButtonRef.setBackgroundColor(UIColor.clear)
        
        
    }
    
    @IBAction func CompButton() {
        
        NovButtonRef.setBackgroundColor(UIColor.clear)
        AdvButtonRef.setBackgroundColor(UIColor.clear)
        ProfButtonRef.setBackgroundColor(UIColor.clear)
        CompButtonRef.setBackgroundColor(UIColor.blue)
        ExperButtonRef.setBackgroundColor(UIColor.clear)
        
    }
    
    @IBAction func ExperButton() {
        
        NovButtonRef.setBackgroundColor(UIColor.clear)
        AdvButtonRef.setBackgroundColor(UIColor.clear)
        ProfButtonRef.setBackgroundColor(UIColor.clear)
        CompButtonRef.setBackgroundColor(UIColor.clear)
        ExperButtonRef.setBackgroundColor(UIColor.blue)
        
        
    }
}
