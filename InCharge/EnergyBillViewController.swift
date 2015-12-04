//
//  EnergyBillViewController.swift
//  InCharge
//
//  Created by Skyler Sin on 12/3/15.
//  Copyright © 2015 Michael Coffaro. All rights reserved.
//

import UIKit
import Charts

class EnergyBillViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var totalCostLabel: UILabel!
    @IBOutlet weak var barChartView: BarChartView!

    
    /*
    This value is either passed by `MealTableViewController` in `prepareForSegue(_:sender:)`
    or constructed as part of adding a new meal.
    */
    var energyBill: EnergyBill?
    var utilitiesKeys: [String]!
    var utilitiesValues: [Double]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up views if editing an existing Energy Bill.
        if let energyBill = energyBill {
            monthLabel.text = energyBill.month
            totalCostLabel.text = String(energyBill.totalCost)
            utilitiesValues = [energyBill.totalCost, energyBill.gas, energyBill.electricity, energyBill.water, energyBill.other]
        }
        
        // Set up graph
        utilitiesKeys = ["Total", "Gas", "Electricity", "Water", "Other"]

        
        setChart(utilitiesKeys, values: utilitiesValues)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setChart(dataPoints: [String], values: [Double]) {
        barChartView.noDataText = "Looks like there's no data for this month yet."
        
        var dataEntries: [BarChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let chartDataSet = BarChartDataSet(yVals: dataEntries, label: "Total, Gas, Electricity, Water, Other")
        let chartData = BarChartData(xVals: utilitiesKeys, dataSet: chartDataSet)
        
        barChartView.data = chartData
        barChartView.descriptionText = ""
        barChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
        
        chartDataSet.colors = ChartColorTemplates.colorful()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
