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
    
    @IBOutlet weak var lineChart: LineChartView!
    
    
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
        lineChart.noDataText = "Looks like we don't have data for this month yet!"
        setChartHours(hours, values: unitsUsedHours)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Function to handle switching between line graph and bar graph
    @IBAction func indexChanged(sender: UISegmentedControl) {
        switch graphTypeSegmentedControl.selectedSegmentIndex{
            case 0:
                graphTypeLabel.text = "Line Graph"
            case 1:
                graphTypeLabel.text = "Bar Graph"
            default:
                break;
        }
    }
    
    //Function to handle switching between units of measurement between graphs
    //Currently using hard coded arrays of data
    @IBAction func unitIndexChanged(sender: UISegmentedControl) {
        switch unitTypeSegmentedControl.selectedSegmentIndex{
            case 0:
                setChartHours(hours, values: unitsUsedHours)
            case 1:
                setChartDays(days, values: unitsUsedDays)
            case 2:
                setChartMonths(months, values: unitsUsedMonths)
            case 3:
                setChartYears(years, values: unitsUsedYears)
            default:
                break;
        }
    }
    
    func setChartHours(dataPoints: [String], values: [Double]) {
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }

            
        let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Used kWH")
        let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
        lineChart.data = lineChartData
    }
    
    func setChartDays(dataPoints: [String], values: [Double]) {
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        
        let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Used kWH")
        let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
        lineChart.data = lineChartData
    }
    
    func setChartMonths(dataPoints: [String], values: [Double]) {
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        
        let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Used kWH")
        let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
        lineChart.data = lineChartData
    }
    
    func setChartYears(dataPoints: [String], values: [Double]) {
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }
        
        
        let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Used kWH")
        let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
        lineChart.data = lineChartData
    }

    
}