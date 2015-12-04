//
//  EnergyBill.swift
//  InCharge
//
//  Created by Skyler Sin on 12/3/15.
//  Copyright © 2015 Michael Coffaro. All rights reserved.
//

import UIKit

class EnergyBill {
    // MARK: Properties
    var month: String
    var startDate: Int
    var endDate: Int
    var totalCost: Double
    var gas: Double
    var electricity: Double
    var water: Double
    var other: Double
    
    
    // MARK: Initialization
    init?(month: String, startDate: Int, endDate: Int, totalCost: Double, gas: Double, electricity: Double, water: Double, other: Double) {
        self.month = month
        self.startDate = startDate
        self.endDate = endDate
        self.totalCost = totalCost
        self.gas = gas
        self.electricity = electricity
        self.water = water
        self.other = other
        
        if month.isEmpty || startDate < 1 || endDate > 31 {
            return nil
        }
    }
    
    
}
