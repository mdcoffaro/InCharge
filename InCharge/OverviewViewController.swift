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
    @IBOutlet weak var unitTypeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var lineChart: LineChartView!
    @IBOutlet weak var barChart: BarChartView!
    
    let hours = ["12AM", "1AM", "2AM", "3AM", "4AM", "5AM", "6AM", "7AM", "8AM", "9AM", "10AM", "11AM", "12PM", "1PM", "2PM", "3PM", "4PM", "5PM", "6PM", "7PM", "8PM", "9PM", "10PM", "11PM"]
    let days = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
    let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Oct", "Nov", "Dec"]
    let years = ["2012", "2013", "2014", "2015"]
    
    let unitsUsedHours = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
    let unitsUsedDays = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
    let unitsUsedMonths = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
    let unitsUsedYears = [20.0, 4.0, 6.0, 3.0]
    
    var firstClickBarChart = true

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lineChart.noDataText = "Looks like we don't have data for this month yet!"
        barChart.noDataText = "Looks like we don't have data for this month yet!"
        setChartHours(hours, values: unitsUsedHours, graphType: "Line")
        barChart.hidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Function to handle switching between line graph and bar graph
    @IBAction func indexChanged(sender: UISegmentedControl) {
        switch graphTypeSegmentedControl.selectedSegmentIndex{
            case 0:
                lineChart.hidden = false
                barChart.hidden = true
                switch unitTypeSegmentedControl.selectedSegmentIndex{
                    case 0:
                        setChartHours(hours, values: unitsUsedHours, graphType: "Line")
                    case 1:
                        setChartDays(days, values: unitsUsedDays, graphType: "Line")
                    case 2:
                        setChartMonths(months, values: unitsUsedMonths, graphType: "Line")
                    case 3:
                        setChartYears(years, values: unitsUsedYears, graphType: "Line")
                    default:
                        break;
                }
            case 1:
                barChart.hidden = false
                lineChart.hidden = true
                switch unitTypeSegmentedControl.selectedSegmentIndex{
                    case 0:
                        setChartHours(hours, values: unitsUsedHours, graphType: "Bar")
                    case 1:
                        setChartDays(days, values: unitsUsedDays, graphType: "Bar")
                    case 2:
                        setChartMonths(months, values: unitsUsedMonths, graphType: "Bar")
                    case 3:
                        setChartYears(years, values: unitsUsedYears, graphType: "Bar")
                    default:
                        break;
                }
            default:
                break;
        }
    }
    
    //Function to handle switching between units of measurement between graphs
    //Currently using hard coded arrays of data
    @IBAction func unitIndexChanged(sender: UISegmentedControl) {
        switch unitTypeSegmentedControl.selectedSegmentIndex{
            case 0:
                if(graphTypeSegmentedControl.selectedSegmentIndex == 0){
                    setChartHours(hours, values: unitsUsedHours, graphType: "Line")
                }else{
                    setChartHours(hours, values: unitsUsedHours, graphType: "Bar")
                }
            case 1:
                if(graphTypeSegmentedControl.selectedSegmentIndex == 0){
                    setChartDays(days, values: unitsUsedDays, graphType: "Line")
                }else{
                    setChartDays(days, values: unitsUsedDays, graphType: "Bar")
                }
            case 2:
                if(graphTypeSegmentedControl.selectedSegmentIndex == 0){
                    setChartMonths(months, values: unitsUsedMonths, graphType: "Line")
                }else{
                    setChartMonths(months, values: unitsUsedMonths, graphType: "Bar")
                }
            case 3:
                if(graphTypeSegmentedControl.selectedSegmentIndex == 0){
                    setChartYears(years, values: unitsUsedYears, graphType: "Line")
                }else{
                    setChartYears(years, values: unitsUsedYears, graphType: "Bar")
                }
            default:
                break;
        }
    }
    
    func setChartHours(dataPoints: [String], values: [Double], graphType: String) {
        if(graphType == "Bar"){
            var dataEntries: [BarChartDataEntry] = []
            
            for i in 0..<dataPoints.count {
                let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
                dataEntries.append(dataEntry)
            }
<<<<<<< HEAD
            let barChartDataSet = BarChartDataSet(yVals: dataEntries, label: "$ used")
            let barChartData = BarChartData(xVals: dataPoints, dataSet: barChartDataSet)
            barChart.data = barChartData
            let legend = barChart.legend
            legend.wordWrapEnabled = true
=======
            let barChartDataSet = BarChartDataSet(yVals: dataEntries, label: "Units Used kWH")
            let barChartData = BarChartData(xVals: dataPoints, dataSet: barChartDataSet)
            barChart.data = barChartData
>>>>>>> edd294b32e2d32774cb25b8d38fdcd8cc95b380a
        }else{
            var dataEntries: [ChartDataEntry] = []
            
            for i in 0..<dataPoints.count {
                let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                dataEntries.append(dataEntry)
            }
<<<<<<< HEAD
            let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "$ used")
            let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
            lineChart.data = lineChartData
            let legend = lineChart.legend
            legend.wordWrapEnabled = true
=======
            let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Used kWH")
            let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
            lineChart.data = lineChartData
>>>>>>> edd294b32e2d32774cb25b8d38fdcd8cc95b380a
        }
    }
    
    func setChartDays(dataPoints: [String], values: [Double], graphType: String) {
        if(graphType == "Bar"){
            var dataEntries: [BarChartDataEntry] = []
            
            for i in 0..<dataPoints.count {
                let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
                dataEntries.append(dataEntry)
            }
<<<<<<< HEAD
            let barChartDataSet = BarChartDataSet(yVals: dataEntries, label: "$ used")
            let barChartData = BarChartData(xVals: dataPoints, dataSet: barChartDataSet)
            barChart.data = barChartData
            let legend = barChart.legend
            legend.wordWrapEnabled = true
=======
            let barChartDataSet = BarChartDataSet(yVals: dataEntries, label: "Units Used kWH")
            let barChartData = BarChartData(xVals: dataPoints, dataSet: barChartDataSet)
            barChart.data = barChartData
>>>>>>> edd294b32e2d32774cb25b8d38fdcd8cc95b380a
        }else{
            var dataEntries: [ChartDataEntry] = []
            
            for i in 0..<dataPoints.count {
                let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                dataEntries.append(dataEntry)
            }
<<<<<<< HEAD
            let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "$ used")
            let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
            lineChart.data = lineChartData
            let legend = lineChart.legend
            legend.wordWrapEnabled = true
=======
            let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Used kWH")
            let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
            lineChart.data = lineChartData
>>>>>>> edd294b32e2d32774cb25b8d38fdcd8cc95b380a
        }
    }
    
    func setChartMonths(dataPoints: [String], values: [Double], graphType: String) {
        if(graphType == "Bar"){
            var dataEntries: [BarChartDataEntry] = []
            
            for i in 0..<dataPoints.count {
                let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
                dataEntries.append(dataEntry)
            }
<<<<<<< HEAD
            let barChartDataSet = BarChartDataSet(yVals: dataEntries, label: "$ used")
            let barChartData = BarChartData(xVals: dataPoints, dataSet: barChartDataSet)
            barChart.data = barChartData
            let legend = barChart.legend
            legend.wordWrapEnabled = true
=======
            let barChartDataSet = BarChartDataSet(yVals: dataEntries, label: "Units Used kWH")
            let barChartData = BarChartData(xVals: dataPoints, dataSet: barChartDataSet)
            barChart.data = barChartData
>>>>>>> edd294b32e2d32774cb25b8d38fdcd8cc95b380a
        }else{
            var dataEntries: [ChartDataEntry] = []
            
            for i in 0..<dataPoints.count {
                let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                dataEntries.append(dataEntry)
            }
<<<<<<< HEAD
            let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "$ used")
            let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
            lineChart.data = lineChartData
            let legend = lineChart.legend
            legend.wordWrapEnabled = true
=======
            let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Used kWH")
            let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
            lineChart.data = lineChartData
>>>>>>> edd294b32e2d32774cb25b8d38fdcd8cc95b380a
        }
    }
    
    func setChartYears(dataPoints: [String], values: [Double], graphType: String) {
        if(graphType == "Bar"){
            var dataEntries: [BarChartDataEntry] = []
            
            for i in 0..<dataPoints.count {
                let dataEntry = BarChartDataEntry(value: values[i], xIndex: i)
                dataEntries.append(dataEntry)
            }
<<<<<<< HEAD
            let barChartDataSet = BarChartDataSet(yVals: dataEntries, label: "$ used")
            let barChartData = BarChartData(xVals: dataPoints, dataSet: barChartDataSet)
            barChart.data = barChartData
            let legend = barChart.legend
            legend.wordWrapEnabled = true
=======
            let barChartDataSet = BarChartDataSet(yVals: dataEntries, label: "Units Used kWH")
            let barChartData = BarChartData(xVals: dataPoints, dataSet: barChartDataSet)
            barChart.data = barChartData
>>>>>>> edd294b32e2d32774cb25b8d38fdcd8cc95b380a
        }else{
            var dataEntries: [ChartDataEntry] = []
            
            for i in 0..<dataPoints.count {
                let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                dataEntries.append(dataEntry)
            }
<<<<<<< HEAD
            let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "$ used")
            let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
            lineChart.data = lineChartData
            let legend = lineChart.legend
            legend.wordWrapEnabled = true
=======
            let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Used kWH")
            let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
            lineChart.data = lineChartData
>>>>>>> edd294b32e2d32774cb25b8d38fdcd8cc95b380a
        }
    }

}