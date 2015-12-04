//
//  HouseClass.swift
//  InCharge
//
//  Created by Adam on 12/3/15.
//  Copyright © 2015 Michael Coffaro. All rights reserved.
//

import Foundation
import UIKit

//
// People Data
// -----------

// Mom
let hours_mom = [1.0, 5.5, 4.5, 4.0, 5.0, 5.0, 7.6, 8.9, 7.0, 6.9, 10.0, 9.5, 9.2, 10.0, 15.0, 16.0, 17.2, 18.0, 20.0, 21.5, 21.6, 22.0, 19.0, 17.0]
let days_mom = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
let months_mom = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let years_mom = [20.0, 4.0, 6.0, 3.0]

// Dad
let hours_dad = [2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0, 16.0, 17.0, 18.0, 19.0, 20.0, 21.0, 22.0, 23.0, 24.0, 25.0]
let days_dad = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
let months_dad = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let years_dad = [20.0, 4.0, 6.0, 3.0]

// John
let hours_john = [3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0, 16.0, 17.0, 18.0, 19.0, 20.0, 21.0, 22.0, 23.0, 24.0, 25.0, 26.0]
let days_john = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
let months_john = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let years_john = [20.0, 4.0, 6.0, 3.0]

// Lauren
let hours_lauren = [4.0, 5.0, 6.0, 7.0, 8.0, 9.0, 10.0, 11.0, 12.0, 13.0, 14.0, 15.0, 16.0, 17.0, 18.0, 19.0, 20.0, 21.0, 22.0, 23.0, 24.0, 25.0, 26.0, 27.0]
let days_lauren = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
let months_lauren = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let years_lauren = [20.0, 4.0, 6.0, 3.0]


//
// Rooms
// -----------

// Kitchen
let hours_kitchen = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let days_kitchen = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
let months_kitchen = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let years_kitchen = [20.0, 4.0, 6.0, 3.0]

// Living Room
let hours_lr = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let days_lr = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
let months_lr = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let years_lr = [20.0, 4.0, 6.0, 3.0]

// Dining Room
let hours_dr = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let days_dr = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
let months_dr = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let years_dr = [20.0, 4.0, 6.0, 3.0]

// Master Bedroom
let hours_br1 = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let days_br1 = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
let months_br1 = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let years_br1 = [20.0, 4.0, 6.0, 3.0]

// John's Room
let hours_br2 = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let days_br2 = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
let months_br2 = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let years_br2 = [20.0, 4.0, 6.0, 3.0]

// Lauren's Room
let hours_br3 = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let days_br3 = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]
let months_br3 = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
let years_br3 = [20.0, 4.0, 6.0, 3.0]


class Foo {
    var name: String = ""
    var hours: [Double] = []
    var days: [Double] = []
    var months: [Double] = []
    var years: [Double] = []
    var color: UIColor = UIColor.blackColor()

    init(name: String, hours: [Double], days: [Double], months: [Double], years: [Double], color: UIColor) {
        self.name = name
        self.hours = hours
        self.days = days
        self.months = months
        self.years = years
        self.color = color
    }
    
}


class House {
    var name:String = "John's House"
    
    var people = [String: Foo]()
    var mom: Foo = Foo(name: "Mom", hours: hours_mom, days: days_mom, months: months_mom, years: years_mom, color: UIColor.redColor())
    var dad: Foo = Foo(name: "Dad", hours: hours_dad, days: days_dad, months: months_dad, years: years_dad, color: UIColor.blueColor())
    var john: Foo = Foo(name: "John", hours: hours_john, days: days_john, months: months_john, years: years_john, color: UIColor.greenColor())
    var lauren: Foo = Foo(name: "Lauren", hours: hours_lauren, days: days_lauren, months: months_lauren, years: years_lauren, color: UIColor.yellowColor())
    
    func loadPeople(){
        people["Mom"] = mom
        people["Dad"] = dad
        people["John"] = john
        people["Lauren"] = lauren
    }
    
    var rooms = [String: Foo]()
    var kitchen: Foo = Foo(name: "Kitchen", hours: hours_kitchen, days: days_kitchen, months: months_kitchen, years: years_kitchen, color: UIColor.redColor())
    var lr: Foo = Foo(name: "Living Room", hours: hours_lr, days: days_lr, months: months_lr, years: years_lr, color: UIColor.blueColor())
    var dr: Foo = Foo(name: "Dining Room", hours: hours_dr, days: days_dr, months: months_dr, years: years_dr, color: UIColor.greenColor())
    var br1: Foo = Foo(name: "Master Bedroom", hours: hours_br1, days: days_br1, months: months_br1, years: years_br1, color: UIColor.yellowColor())
    var br2: Foo = Foo(name: "John's Room", hours: hours_br2, days: days_br2, months: months_br2, years: years_br2, color: UIColor.purpleColor())
    var br3: Foo = Foo(name: "Lauren's Room", hours: hours_br3, days: days_br3, months: months_br3, years: years_br3, color: UIColor.brownColor())
    
    func loadRooms(){
        rooms["Kitchen"] = kitchen
        rooms["Living Room"] = lr
        rooms["Dining Room"] = dr
        rooms["Master Bedroom"] = br1
        rooms["John's Room"] = br2
        rooms["Lauren's Room"] = br3
        
    }
    
}