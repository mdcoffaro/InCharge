//
//  ViewBillController.swift
//  InCharge
//
//  Created by Michael Coffaro on 11/19/15.
//  Copyright © 2015 Michael Coffaro. All rights reserved.
//

import UIKit
import Charts

class BillViewController: UIViewController {
    
    @IBOutlet weak var barChartView: BarChartView!
    
    var utilitiesKeys: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        utilitiesKeys = ["Gas", "Electricity", "Water", "Other"]
        let utilitiesValues = [95.0, 87.0, 102.0, 60.0]
        
        setChart(utilitiesKeys, values: utilitiesValues)
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
        
        let chartDataSet = BarChartDataSet(yVals: dataEntries, label: "Gas, Electricity, Water, Other")
        let chartData = BarChartData(xVals: utilitiesKeys, dataSet: chartDataSet)
        
        barChartView.data = chartData
        barChartView.descriptionText = ""
        barChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
        
        chartDataSet.colors = ChartColorTemplates.colorful()
    }
    
}