//
//  EnergyBillTableViewController.swift
//  InCharge
//
//  Created by Skyler Sin on 12/3/15.
//  Copyright © 2015 Michael Coffaro. All rights reserved.
//

import UIKit

class EnergyBillTableViewController: UITableViewController {
    
    // MARK: Properties
    
    var energyBills = [EnergyBill]()

    override func viewDidLoad() {
        super.viewDidLoad()

        //Load sample data
        loadMonthSamples()
    }
    
    func loadMonthSamples() {
        let month1 = EnergyBill(month: "November", startDate: 1, endDate: 31, totalCost: 67.0, gas: 12.0, electricity: 25.0, water: 6.0, other: 2.1)!
        let month2 = EnergyBill(month: "October", startDate: 1, endDate: 31, totalCost: 51, gas: 12.0, electricity: 25.0, water: 11.9, other: 2.1)!
        let month3 = EnergyBill(month: "September", startDate: 1, endDate: 31, totalCost: 89, gas: 54.0, electricity: 15.0, water: 20.0, other: 0.0)!
        let month4 = EnergyBill(month: "August", startDate: 1, endDate: 31, totalCost: 220, gas: 87.0, electricity: 75.0, water: 50.0, other: 8.0)!
        let month5 = EnergyBill(month: "July", startDate: 1, endDate: 31, totalCost: 135, gas: 50.0, electricity: 20.0, water: 65.0, other: 0.0)!
        let month6 = EnergyBill(month: "June", startDate: 1, endDate: 31,totalCost: 88, gas: 8.0, electricity: 35.0, water: 43.0, other: 2.0)!
        let month7 = EnergyBill(month: "May", startDate: 1, endDate: 31, totalCost: 72, gas: 12.0, electricity: 30.0, water: 30.0, other: 0.0)!
        let month8 = EnergyBill(month: "April", startDate: 1, endDate: 31, totalCost: 165, gas: 21.0, electricity: 44.0, water: 87.0, other: 13.0)!
        let month9 = EnergyBill(month: "March", startDate: 1, endDate: 31, totalCost: 180, gas: 93.0, electricity: 47.0, water: 32.0, other: 8.0)!
        let month10 = EnergyBill(month: "February", startDate: 1, endDate: 31, totalCost: 235, gas: 45.0, electricity: 126.0, water: 59.0, other: 5.0)!
        let month11 = EnergyBill(month: "January", startDate: 1, endDate: 31, totalCost: 60, gas: 0.0, electricity: 0.0, water: 60.0, other: 0.0)!
        energyBills += [month1, month2, month3, month4, month5, month6, month7, month8, month9, month10, month11]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return energyBills.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //Table view cells are reused and should be dequeued using a cell identifier
        let cellIdentifier = "EnergyBillTableViewCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! EnergyBillTableViewCell
        
        //Fetches the appropriate meal for the data source layout
        let energyBill = energyBills[indexPath.row]

        cell.monthLabel.text = energyBill.month

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let EnergyBillDetailViewController = segue.destinationViewController as! EnergyBillViewController
        
        // Get the cell that generated this segue.
        if let selectedEnergyBillCell = sender as? EnergyBillTableViewCell {
            let indexPath = tableView.indexPathForCell(selectedEnergyBillCell)!
            let selectedEnergyBill = energyBills[indexPath.row]
            EnergyBillDetailViewController.energyBill = selectedEnergyBill
        }
    }

}
