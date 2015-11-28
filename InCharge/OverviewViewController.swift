//
//  OverviewViewController.swift
//  InCharge
//
//  Created by Skyler Sin on 11/20/15.
//  Copyright © 2015 Michael Coffaro. All rights reserved.
//

import UIKit
import Charts

class OverviewViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var graphTypeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var graphTypeLabel: UILabel!
    
    @IBOutlet weak var unitTypeLabel: UILabel!
    @IBOutlet weak var unitTypeSegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Function to handle switching between line graph and bar graph
    @IBAction func indexChanged(sender: UISegmentedControl) {
        switch graphTypeSegmentedControl.selectedSegmentIndex
        {
            case 0:
                graphTypeLabel.text = "Line Graph"
            case 1:
                graphTypeLabel.text = "Bar Graph"
            default:
                break;
        }
    }
    
    @IBAction func unitIndexChanged(sender: UISegmentedControl) {
        switch unitTypeSegmentedControl.selectedSegmentIndex
        {
        case 0:
            unitTypeLabel.text = "Day"
        case 1:
            unitTypeLabel.text = "Week"
        case 2:
            unitTypeLabel.text = "Month"
        case 3:
            unitTypeLabel.text = "Year"
        default:
            break;
        }
    }
    
}