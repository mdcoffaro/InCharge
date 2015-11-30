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
    
    
    let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
    let unitsSold = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        lineChart.noDataText = "Looks like we don't have data for this month yet!"
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
    
    @IBAction func unitIndexChanged(sender: UISegmentedControl) {
        switch unitTypeSegmentedControl.selectedSegmentIndex{
            case 0:
                setChartDay(months, values: unitsSold)
            case 1:
                unitTypeLabel.text = "Week"
                lineChart.noDataText = "WEEKS BRUH"
            case 2:
            unitTypeLabel.text = "Month"
            lineChart.noDataText = "MONTHS BRUH"
            case 3:
                unitTypeLabel.text = "Year"
                lineChart.noDataText = "YEARS BRUH"
            default:
                break;
        }
    }
    
    func setChartDay(dataPoints: [String], values: [Double]) {
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
            dataEntries.append(dataEntry)
        }

            
        let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Sold")
        let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
        lineChart.data = lineChartData
    }
    
}