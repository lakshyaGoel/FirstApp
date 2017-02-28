//
//  ViewController.swift
//  FirstApp
//
//  Created by Lakshya Goel on 2/22/17.
//  Copyright © 2017 Lakshya Goel. All rights reserved.
//

import UIKit

enum modes {
    case addition
    case subtraction
    case multiplication
    case no_mode_set
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var mode:modes = .no_mode_set
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

