//
//  ViewController.swift
//  Electromaps
//
//  Created by Xavier Cañadell on 10/6/15.
//  Copyright (c) 2015 Xavier Cañadell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(animated: Bool)
    {
        self.performSegueWithIdentifier("loginView", sender: self);
    }


}

