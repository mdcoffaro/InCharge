//
//  FirstViewController.swift
//  InCharge
//
//  Created by Michael Coffaro on 11/15/15.
//  Copyright (c) 2015 Michael Coffaro. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var viewMyBill: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    
    @IBAction func testButton(sender: UIButton) {
        print("yo");
        print("Hello world");
    }
}

