//
//  CompareGraphViewController.swift
//  InCharge
//
//  Created by Adam on 12/4/15.
//  Copyright © 2015 Michael Coffaro. All rights reserved.
//

import UIKit
import Charts

class CompareGraphViewController: UIViewController {
    
    var passer: selectedItems?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        house.loadPeople()
        house.loadRooms()

        // Do any additional setup after loading the view.
        lineChart.noDataText = "Looks like we don't have data for this month yet!"

        setChartHours(hours, values: unitsUsedHours, graphType: "Line", itemsToRender: passer!.selectedPeople)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var lineChart: LineChartView!
    @IBOutlet weak var unitTypeSegmentedControl: UISegmentedControl!
    
    var house = House()
    
   
    let hours = ["12AM", "1AM", "2AM", "3AM", "4AM", "5AM", "6AM", "7AM", "8AM", "9AM", "10AM", "11AM", "12PM", "1PM", "2PM", "3PM", "4PM", "5PM", "6PM", "7PM", "8PM", "9PM", "10PM", "11PM"]
    let days = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
    let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"]
    let years = ["2012", "2013", "2014", "2015"]
    
    let unitsUsedHours = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
    let unitsUsedDays = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
    let unitsUsedMonths = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
    let unitsUsedYears = [20.0, 4.0, 6.0, 3.0]
    
    var firstClickBarChart = true
    

    

    
    @IBAction func unitIndexChanged(sender: UISegmentedControl) {
        switch unitTypeSegmentedControl.selectedSegmentIndex{
        case 0:
            setChartHours(hours, values: unitsUsedHours, graphType: "Line", itemsToRender: passer!.selectedPeople)
        case 1:
            setChartDays(days, values: unitsUsedDays, graphType: "Line")
        case 2:
            setChartMonths(months, values: unitsUsedMonths, graphType: "Line")
        case 3:
            setChartYears(years, values: unitsUsedYears, graphType: "Line")
        default:
            break;
        }
    }
    
       
    func setChartHours(dataPoints: [String], values: [Double], graphType: String, itemsToRender: [String]) {

            var allLineChartDataSets: [LineChartDataSet] = [LineChartDataSet]()
            var dataEntries: [ChartDataEntry] = []
            let dataPoints = hours
            for(val) in itemsToRender{
                print(val)
                let values = house.people[val]!.hours
                for i in 0..<dataPoints.count {
                    let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                    dataEntries.append(dataEntry)
                }
                let lineChartDataSet1: LineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Used " + val)
                allLineChartDataSets.append(lineChartDataSet1)
            }
            let allDataPoints: [String] = hours
            let lineChartData = LineChartData(xVals: allDataPoints, dataSets: allLineChartDataSets)
            lineChart.data = lineChartData

    }
    
    func setChartDays(dataPoints: [String], values: [Double], graphType: String) {

            var dataEntries: [ChartDataEntry] = []
            
            for i in 0..<dataPoints.count {
                let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                dataEntries.append(dataEntry)
            }
            let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Used kWH")
            let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
            lineChart.data = lineChartData
    }
    
    func setChartMonths(dataPoints: [String], values: [Double], graphType: String) {

            var dataEntries: [ChartDataEntry] = []
            
            for i in 0..<dataPoints.count {
                let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                dataEntries.append(dataEntry)
            }
            let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Used kWH")
            let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
            lineChart.data = lineChartData
    }
    
    func setChartYears(dataPoints: [String], values: [Double], graphType: String) {

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
