//
//  CompareViewController.swift
//  InCharge
//
//  Created by Michael Coffaro on 12/1/15.
//  Copyright © 2015 Michael Coffaro. All rights reserved.
//

import UIKit
import Charts

class selectedItems {
    var showPeople:Bool = false
    var selectedPeople: [String] = []
    var selectedRooms: [String] = []
}

class CompareViewController: UIViewController {
    

    @IBOutlet weak var compareTypeSelector: UISegmentedControl!
    @IBOutlet weak var comparePeopleView: UIView!
    @IBOutlet weak var compareRoomsView: UIScrollView!
    
    @IBOutlet weak var momSwitch: UISwitch!
    @IBOutlet weak var dadSwitch: UISwitch!
    @IBOutlet weak var johnSwitch: UISwitch!
    @IBOutlet weak var laurenSwitch: UISwitch!
    
    @IBOutlet weak var kSwitch: UISwitch!
    @IBOutlet weak var lrSwitch: UISwitch!
    @IBOutlet weak var drSwitch: UISwitch!
    @IBOutlet weak var gSwitch: UISwitch!
    @IBOutlet weak var mbSwitch: UISwitch!
    @IBOutlet weak var jrSwitch: UISwitch!
    @IBOutlet weak var larSwitch: UISwitch!
    
    @IBOutlet weak var compareButton: UIButton!
    
    var selectedPeople = [String: Bool]()
    var selectedRooms = [String: Bool]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        compareRoomsView.hidden = true
        
        selectedPeople["Mom"] = true
        selectedPeople["Dad"] = true
        selectedPeople["John"] = true
        selectedPeople["Lauren"] = true
        
        selectedRooms["Kitchen"] = true
        selectedRooms["Living Room"] = true
        selectedRooms["Dining Room"] = true
        selectedRooms["Garage"] = true
        selectedRooms["Master Bedroom"] = true
        selectedRooms["John's Room"] = true
        selectedRooms["Lauren's Room"] = true
    }

    @IBAction func changeCompareType(sender: UISegmentedControl){
        switch compareTypeSelector.selectedSegmentIndex{
            case 0:
                comparePeopleView.hidden = false
                compareRoomsView.hidden = true
            case 1:
                comparePeopleView.hidden = true
                compareRoomsView.hidden = false
            default:
                break
        }
    }

//    People Switches
    @IBAction func selectMom(sender: UISwitch) {
        if (momSwitch.on){
            selectedPeople["Mom"] = true
        } else {
            selectedPeople["Mom"] = false
        }
    }
  
    @IBAction func selectDad(sender: UISwitch) {
        if (dadSwitch.on){
            selectedPeople["Dad"] = true
        } else {
            selectedPeople["Dad"] = false
        }
    }
    
    @IBAction func johnSelected(sender: UISwitch) {
        if (johnSwitch.on){
            selectedPeople["John"] = true
        } else {
            selectedPeople["John"] = false
        }
    }
    
    @IBAction func laurenSelected(sender: UISwitch) {
        if (laurenSwitch.on){
            selectedPeople["Lauren"] = true
        } else {
            selectedPeople["Lauren"] = false
        }
    }
    
//    Room Switches
    @IBAction func kSelected(sender: UISwitch) {
        if (kSwitch.on){
            selectedRooms["Kitchen"] = true
        } else {
            selectedRooms["Kitchen"] = false
        }
    }

    @IBAction func lrSelected(sender: UISwitch) {
        if (lrSwitch.on){
            selectedRooms["Living Room"] = true
        } else {
            selectedRooms["Living Room"] = false
        }
    }
    
    @IBAction func drSelected(sender: UISwitch) {
        if (drSwitch.on){
            selectedRooms["Dining Room"] = true
        } else {
            selectedRooms["Dining Room"] = false
        }
    }
    
    @IBAction func gSelected(sender: UISwitch) {
        if (gSwitch.on){
            selectedRooms["Garage"] = true
        } else {
            selectedRooms["Garage"] = false
        }
    }
    
    @IBAction func mbSelected(sender: UISwitch) {
        if (mbSwitch.on){
            selectedRooms["Master Bedroom"] = true
        } else {
            selectedRooms["Master Bedroom"] = false
        }
    }
    
    @IBAction func jrSelected(sender: UISwitch) {
        if (jrSwitch.on){
            selectedRooms["John's Room"] = true
        } else {
            selectedRooms["John's Room"] = false
        }
    }
    
    @IBAction func larSelected(sender: UISwitch) {
        if (larSwitch.on){
            selectedRooms["Lauren's Room"] = true
        } else {
            selectedRooms["Lauren's Room"] = false
        }
    }
    
    @IBAction func compareSelected(sender: UIButton) {
        print("--------------------------------")
        print("Selected people")
        for (key,val) in selectedPeople {
            print("\(key) \t \(val)")
        }
        print("")
        
        print("Selected people")
        for (key,val) in selectedRooms {
            print("\(key) \t \(val)")
        }
        print("--------------------------------")
        
        let passer = selectedItems()
        if (compareTypeSelector.selectedSegmentIndex == 0){
            passer.showPeople = true
        } else {
            passer.showPeople = false
        }
        for (key,val) in selectedPeople {
            if(val){
                passer.selectedPeople.append(key)
            }
        }
        for (key,val) in selectedRooms {
            if(val){
                passer.selectedPeople.append(key)
            }

        }
    }
}
















