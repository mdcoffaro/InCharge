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
    var chosenFoos: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        house.loadPeople()
        house.loadRooms()

        // Do any additional setup after loading the view.
        lineChart.noDataText = "Looks like we don't have data yet!"
        
        if (passer!.showPeople){
            chosenFoos = passer!.selectedPeople
        } else {
            chosenFoos = passer!.selectedRooms
        }
        

        setChartHours(hours, values: unitsUsedHours, graphType: "Line", itemsToRender: chosenFoos)

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
            setChartHours(hours, values: unitsUsedHours, graphType: "Line", itemsToRender: chosenFoos)
        case 1:
            setChartDays(days, values: unitsUsedDays, graphType: "Line", itemsToRender: chosenFoos)
        case 2:
            setChartMonths(months, values: unitsUsedMonths, graphType: "Line", itemsToRender: chosenFoos)
        case 3:
            setChartYears(years, values: unitsUsedYears, graphType: "Line", itemsToRender: chosenFoos)
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
            if (passer!.showPeople){
                let values = house.people[val]!.hours
                for i in 0..<dataPoints.count {
                    let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                    dataEntries.append(dataEntry)
                }
            } else {
                let values = house.rooms[val]!.hours
                for i in 0..<dataPoints.count {
                    let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                    dataEntries.append(dataEntry)
                }
                
            }
            let lineChartDataSet1: LineChartDataSet = LineChartDataSet(yVals: dataEntries, label: val)
            
            //replace UIColor.redColor() with val.color
            if(passer!.showPeople){
                lineChartDataSet1.setColor(house.people[val]!.color)
                lineChartDataSet1.setCircleColor(house.people[val]!.color)
            }else{
                lineChartDataSet1.setColor(house.rooms[val]!.color)
                lineChartDataSet1.setCircleColor(house.rooms[val]!.color)
            }
            allLineChartDataSets.append(lineChartDataSet1)
        }
        let allDataPoints: [String] = hours
        let lineChartData = LineChartData(xVals: allDataPoints, dataSets: allLineChartDataSets)
        lineChart.data = lineChartData
        let legend = lineChart.legend
        legend.wordWrapEnabled = true

    }
    
    func setChartDays(dataPoints: [String], values: [Double], graphType: String, itemsToRender: [String]) {
        
        var allLineChartDataSets: [LineChartDataSet] = [LineChartDataSet]()
        var dataEntries: [ChartDataEntry] = []
        let dataPoints = days
        for(val) in itemsToRender{
            print(val)
            if (passer!.showPeople){
                let values = house.people[val]!.days
                for i in 0..<dataPoints.count {
                    let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                    dataEntries.append(dataEntry)
                }
            } else {
                let values = house.rooms[val]!.days
                for i in 0..<dataPoints.count {
                    let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                    dataEntries.append(dataEntry)
                }
                
            }
            let lineChartDataSet1: LineChartDataSet = LineChartDataSet(yVals: dataEntries, label: val)
            
            //replace UIColor.redColor() with val.color
            if(passer!.showPeople){
                lineChartDataSet1.setColor(house.people[val]!.color)
                lineChartDataSet1.setCircleColor(house.people[val]!.color)
            }else{
                lineChartDataSet1.setColor(house.rooms[val]!.color)
                lineChartDataSet1.setCircleColor(house.rooms[val]!.color)
            }
            allLineChartDataSets.append(lineChartDataSet1)
        }
        let allDataPoints: [String] = days
        let lineChartData = LineChartData(xVals: allDataPoints, dataSets: allLineChartDataSets)
        lineChart.data = lineChartData
        let legend = lineChart.legend
        legend.wordWrapEnabled = true
    }
    
    func setChartMonths(dataPoints: [String], values: [Double], graphType: String, itemsToRender: [String]) {
        
        var allLineChartDataSets: [LineChartDataSet] = [LineChartDataSet]()
        var dataEntries: [ChartDataEntry] = []
        let dataPoints = months
        for(val) in itemsToRender{
            print(val)
            if (passer!.showPeople){
                let values = house.people[val]!.months
                for i in 0..<dataPoints.count {
                    let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                    dataEntries.append(dataEntry)
                }
            } else {
                let values = house.rooms[val]!.months
                for i in 0..<dataPoints.count {
                    let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                    dataEntries.append(dataEntry)
                }
                
            }
            let lineChartDataSet1: LineChartDataSet = LineChartDataSet(yVals: dataEntries, label: val)
            
            //replace UIColor.redColor() with val.color
            if(passer!.showPeople){
                lineChartDataSet1.setColor(house.people[val]!.color)
                lineChartDataSet1.setCircleColor(house.people[val]!.color)
            }else{
                lineChartDataSet1.setColor(house.rooms[val]!.color)
                lineChartDataSet1.setCircleColor(house.rooms[val]!.color)
            }
            allLineChartDataSets.append(lineChartDataSet1)
        }
        let allDataPoints: [String] = months
        let lineChartData = LineChartData(xVals: allDataPoints, dataSets: allLineChartDataSets)
        lineChart.data = lineChartData
        let legend = lineChart.legend
        legend.wordWrapEnabled = true

    }
    
    func setChartYears(dataPoints: [String], values: [Double], graphType: String, itemsToRender: [String]) {
        
        var allLineChartDataSets: [LineChartDataSet] = [LineChartDataSet]()
        var dataEntries: [ChartDataEntry] = []
        let dataPoints = years
        for(val) in itemsToRender{
            print(val)
            if (passer!.showPeople){
                let values = house.people[val]!.years
                for i in 0..<dataPoints.count {
                    let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                    dataEntries.append(dataEntry)
                }
            } else {
                let values = house.rooms[val]!.years
                for i in 0..<dataPoints.count {
                    let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                    dataEntries.append(dataEntry)
                }
                
            }
            let lineChartDataSet1: LineChartDataSet = LineChartDataSet(yVals: dataEntries, label: val)
            
            //replace UIColor.redColor() with val.color
            if(passer!.showPeople){
                lineChartDataSet1.setColor(house.people[val]!.color)
                lineChartDataSet1.setCircleColor(house.people[val]!.color)
            }else{
                lineChartDataSet1.setColor(house.rooms[val]!.color)
                lineChartDataSet1.setCircleColor(house.rooms[val]!.color)
            }
            allLineChartDataSets.append(lineChartDataSet1)
        }
        let allDataPoints: [String] = years
        let lineChartData = LineChartData(xVals: allDataPoints, dataSets: allLineChartDataSets)
        lineChart.data = lineChartData
        let legend = lineChart.legend
        legend.wordWrapEnabled = true
    }
}
