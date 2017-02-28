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
    
    @IBOutlet weak var label: UILabel!
    var labelString:String = "0"
    var currentMode:modes = .no_mode_set
    var savedNum:Int = 0
    var lastButtonWasMode:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didPressPlus(_ sender: AnyObject) {
    }
    
    @IBAction func didPressSubtract(_ sender: AnyObject) {
    }
    
    @IBAction func didPressMultiply(_ sender: AnyObject) {
    }
    
    @IBAction func didPressEquals(_ sender: AnyObject) {
    }
    
    @IBAction func didPressClear(_ sender: AnyObject) {
    }
    
    @IBAction func didPressNumber(_ sender: UIButton) {
    }
    
    func updateText() {
        
    }
    
    func changeMode(_ newMode: modes) {
        
    }

}

