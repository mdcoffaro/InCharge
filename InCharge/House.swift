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

let hours_mom = [20.0, 4.0, 2.0, 10.0, 25.0, 15.0, 18.0, 24.0, 21.0, 8.0, 1.0, 17.0, 3.0, 19.0, 23.0, 6.0, 22.0, 11.0, 14.0, 5.0, 13.0, 7.0, 12.0, 9.0]

let days_mom = [23.0, 24.0, 28.0, 32.0, 34.0, 38.0, 13.0, 3.0, 29.0, 22.0, 25.0, 9.0, 31.0, 6.0, 7.0, 5.0, 40.0, 27.0, 14.0, 1.0, 4.0, 2.0, 11.0, 10.0, 30.0, 19.0, 15.0, 39.0, 37.0, 12.0, 16.0]

let months_mom = [20.0, 14.0, 16.0, 23.0, 8.0, 7.0, 12.0, 1.0, 8.0, 16.0, 17.0, 21.0]

let years_mom = [20.0, 18.0, 16.0, 14.0]


// Dad

let hours_dad = [7.0, 2.0, 11.0, 13.0, 4.0, 9.0, 20.0, 1.0, 5.0, 17.0, 23.0, 6.0, 8.0, 18.0, 15.0, 14.0, 10.0, 12.0, 24.0, 21.0, 3.0, 25.0, 22.0, 16.0]

let days_dad = [8.0, 27.0, 9.0, 38.0, 37.0, 6.0, 29.0, 12.0, 4.0, 20.0, 30.0, 16.0, 39.0, 10.0, 2.0, 32.0, 22.0, 17.0, 15.0, 34.0, 26.0, 24.0, 13.0, 14.0, 33.0, 23.0, 19.0, 28.0, 36.0, 3.0, 5.0]

let months_dad = [23.0, 22.0, 21.0, 7.0, 12.0, 14.0, 8.0, 6.0, 13.0, 13.0, 12.0, 16.0]

let years_dad = [18.0, 14.0, 16.0, 13.0]


// John

let hours_john = [17.0, 3.0, 2.0, 20.0, 18.0, 15.0, 23.0, 19.0, 11.0, 14.0, 6.0, 12.0, 24.0, 13.0, 10.0, 21.0, 5.0, 16.0, 9.0, 8.0, 22.0, 7.0, 4.0, 25.0]

let days_john = [38.0, 31.0, 34.0, 24.0, 35.0, 23.0, 7.0, 36.0, 26.0, 28.0, 25.0, 27.0, 29.0, 6.0, 14.0, 32.0, 17.0, 3.0, 18.0, 16.0, 39.0, 11.0, 9.0, 19.0, 21.0, 20.0, 30.0, 40.0, 15.0, 2.0, 22.0]

let months_john = [22.0, 14.0, 16.0, 13.0, 12.0, 16.0, 20.0, 14.0, 16.0, 13.0, 12.0, 16.0]

let years_john = [20.0, 14.0, 16.0, 16.0]


// Lauren

let hours_lauren = [25.0, 22.0, 11.0, 9.0, 3.0, 24.0, 13.0, 17.0, 21.0, 20.0, 12.0, 18.0, 7.0, 8.0, 5.0, 6.0, 19.0, 2.0, 15.0, 1.0, 23.0, 14.0, 10.0, 4.0]

let days_lauren = [38.0, 31.0, 34.0, 24.0, 35.0, 23.0, 7.0, 36.0, 26.0, 28.0, 25.0, 27.0, 29.0, 6.0, 14.0, 32.0, 17.0, 3.0, 18.0, 16.0, 39.0, 11.0, 9.0, 19.0, 21.0, 20.0, 30.0, 40.0, 15.0, 2.0, 22.0]

let months_lauren = [22.0, 22.0, 23.0, 25.0, 24.0, 16.0, 19.0, 14.0, 10.0, 8.0, 6.0, 16.0]

let years_lauren = [20.0, 20.0, 18.0, 18.0]



//

// Rooms

// -----------


// Kitchen

let hours_kitchen = [21.0, 9.0, 1.0, 6.0, 22.0, 3.0, 19.0, 4.0, 23.0, 24.0, 25.0, 7.0, 12.0, 14.0, 18.0, 13.0, 16.0, 20.0, 15.0, 2.0, 10.0, 17.0, 8.0, 11.0]

let days_kitchen = [39.0, 23.0, 30.0, 33.0, 20.0, 29.0, 12.0, 18.0, 45.0, 13.0, 37.0, 44.0, 22.0, 32.0, 34.0, 36.0, 40.0, 16.0, 41.0, 25.0, 31.0, 15.0, 19.0, 43.0, 21.0, 46.0, 35.0, 28.0, 38.0, 27.0, 17.0]

let months_kitchen = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]

let years_kitchen = [20.0, 4.0, 6.0, 3.0]


// Living Room

let hours_lr = [20.0, 25.0, 19.0, 9.0, 3.0, 16.0, 8.0, 5.0, 2.0, 11.0, 18.0, 14.0, 21.0, 1.0, 17.0, 13.0, 10.0, 15.0, 7.0, 24.0, 4.0, 12.0, 6.0, 23.0]

let days_lr = [19.0, 33.0, 46.0, 25.0, 21.0, 18.0, 16.0, 23.0, 14.0, 39.0, 27.0, 13.0, 22.0, 30.0, 20.0, 32.0, 31.0, 43.0, 24.0, 26.0, 41.0, 37.0, 36.0, 42.0, 38.0, 12.0, 40.0, 15.0, 35.0, 45.0, 34.0]

let months_lr = [12.0, 14.0, 23.0, 32.0, 16.0, 17.0, 20.0, 24.0, 26.0, 13.0, 12.0, 16.0]

let years_lr = [22.0, 46.0, 23.0, 43.0]


// Dining Room

let hours_dr = [11.0, 22.0, 13.0, 2.0, 5.0, 15.0, 14.0, 23.0, 4.0, 20.0, 16.0, 9.0, 18.0, 10.0, 6.0, 19.0, 21.0, 25.0, 1.0, 12.0, 7.0, 3.0, 8.0, 17.0]

let days_dr = [25.0, 31.0, 13.0, 40.0, 39.0, 29.0, 32.0, 12.0, 28.0, 33.0, 17.0, 26.0, 18.0, 43.0, 15.0, 30.0, 41.0, 38.0, 46.0, 19.0, 42.0, 37.0, 22.0, 45.0, 27.0, 24.0, 23.0, 14.0, 44.0, 36.0, 35.0]

let months_dr = [20.0, 24.0, 26.0, 13.0, 12.0, 16.0, 20.0, 14.0, 26.0, 23.0, 12.0, 26.0]

let years_dr = [26.0, 33.0, 35.0, 36.0]


// Master Bedroom

let hours_br1 = [16.0, 6.0, 2.0, 1.0, 8.0, 4.0, 22.0, 12.0, 3.0, 17.0, 13.0, 20.0, 9.0, 19.0, 15.0, 23.0, 18.0, 14.0, 10.0, 24.0, 21.0, 7.0, 5.0, 25.0]

let days_br1 = [38.0, 14.0, 26.0, 39.0, 15.0, 22.0, 12.0, 36.0, 32.0, 46.0, 25.0, 28.0, 30.0, 41.0, 40.0, 31.0, 34.0, 35.0, 13.0, 17.0, 44.0, 19.0, 45.0, 43.0, 42.0, 21.0, 33.0, 27.0, 20.0, 23.0, 24.0]

let months_br1 = [22.0, 22.0, 26.0, 13.0, 22.0, 26.0, 25.0, 24.0, 16.0, 13.0, 12.0, 19.0]

let years_br1 = [32.0, 42.0, 46.0, 30.0]


// John's Room

let hours_br2 = [1.0, 19.0, 24.0, 17.0, 3.0, 14.0, 6.0, 12.0, 23.0, 15.0, 9.0, 5.0, 2.0, 20.0, 10.0, 8.0, 13.0, 22.0, 21.0, 7.0, 18.0, 4.0, 10.0, 16.0]

let days_br2 = [17.0, 14.0, 13.0, 19.0, 42.0, 39.0, 28.0, 37.0, 32.0, 21.0, 46.0, 18.0, 26.0, 27.0, 20.0, 36.0, 45.0, 35.0, 22.0, 29.0, 15.0, 40.0, 43.0, 44.0, 16.0, 41.0, 25.0, 12.0, 38.0, 33.0, 24.0]

let months_br2 = [22.0, 24.0, 26.0, 13.0, 14.0, 17.0, 19.0, 4.0, 12.0, 13.0, 22.0, 23.0]

let years_br2 = [19.0, 18.0, 25.0, 26.0]


// Lauren's Room

let hours_br3 = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0, 20.0, 4.0, 6.0, 3.0, 12.0, 16.0]

let days_br3 = [20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 20.0, 4.0, 6.0, 3.0, 12.0, 12.0]

let months_br3 = [14.0, 24.0, 17.0, 17.0, 23.0, 19.0, 29.0, 24.0, 26.0, 33.0, 12.0, 14.0]

let years_br3 = [20.0, 24.0, 36.0, 33.0]



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
