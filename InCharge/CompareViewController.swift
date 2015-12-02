//
//  CompareViewController.swift
//  InCharge
//
//  Created by Michael Coffaro on 12/1/15.
//  Copyright © 2015 Michael Coffaro. All rights reserved.
//

import UIKit
import Charts


class CompareViewController: UIViewController {
    
    @IBOutlet weak var lineChart: LineChartView!
    @IBOutlet weak var leftItemSelector: UIPickerView!
    @IBOutlet weak var rightItemSelector: UIPickerView!
    
    
    let hours = ["12AM", "1AM", "2AM", "3AM", "4AM", "5AM", "6AM", "7AM", "8AM", "9AM", "10AM", "11AM", "12PM", "1PM", "2PM", "3PM", "4PM", "5PM", "6PM", "7PM", "8PM", "9PM", "10PM", "11PM"]
    let days = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
    let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"]
    let years = ["2012", "2013", "2014", "2015"]
    
    let unitsUsedHours = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
    let unitsUsedDays = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
    let unitsUsedMonths = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
    let unitsUsedYears = [20.0, 4.0, 6.0, 3.0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setChartYears(years, values: unitsUsedYears)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setChartYears(dataPoints: [String], values: [Double]) {
        
        var allLineChartDataSets: [LineChartDataSet] = [LineChartDataSet]()
        
        var dataEntries: [ChartDataEntry] = []
        let dataPoints = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul"]
        let values = [18.0, 4.0, 6.0, 3.0, 12.0, 16.0, 30]
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        let lineChartDataSet1: LineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Used A")
        allLineChartDataSets.append(lineChartDataSet1)
        
        
        var dataEntries2: [ChartDataEntry] = []
        let dataPoints2 = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Aug"]
        let values2 = [21.0, 5.0, 7.0, 10.0, 11.0, 18.0, 20]
        for i in 0..<dataPoints2.count {
            let dataEntry2 = ChartDataEntry(value: values2[i], xIndex: i)
            dataEntries2.append(dataEntry2)
        }
        
        let lineChartDataSet2 = LineChartDataSet(yVals: dataEntries2, label: "Units Used B")
        lineChartDataSet2.setColor(UIColor.redColor())
        lineChartDataSet2.setCircleColor(UIColor.redColor())
        allLineChartDataSets.append(lineChartDataSet2)
        
        let allDataPoints: [String] = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug"]
        
        let lineChartData = LineChartData(xVals: allDataPoints, dataSets: allLineChartDataSets)
        
        lineChart.data = lineChartData
    }
}
