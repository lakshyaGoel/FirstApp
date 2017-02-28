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
        changeMode(.addition)
    }
    
    @IBAction func didPressSubtract(_ sender: AnyObject) {
        changeMode(.subtraction)
    }
    
    @IBAction func didPressMultiply(_ sender: AnyObject) {
        changeMode(.multiplication)
    }
    
    @IBAction func didPressEquals(_ sender: AnyObject) {
        guard let labelInt:Int = Int(labelString) else {
            return
        }
        if(currentMode == .no_mode_set || lastButtonWasMode){
            return
        }
        if(currentMode == .addition){
            savedNum += labelInt
        }else if(currentMode == .subtraction){
            savedNum -= labelInt
        }else if(currentMode == .multiplication){
            savedNum *= labelInt
        }
        currentMode = .no_mode_set
        labelString = "\(savedNum)"
        updateText()
        lastButtonWasMode = true
    }
    
    @IBAction func didPressClear(_ sender: AnyObject) {
        labelString = "0"
        currentMode = .no_mode_set
        savedNum = 0
        lastButtonWasMode = false
        label.text = "0"
    }
    
    @IBAction func didPressNumber(_ sender: UIButton) {
        let stringValue:String? = sender.titleLabel?.text
        if(lastButtonWasMode){
            lastButtonWasMode = false
            labelString = "0"
        }
        labelString = labelString.appending(stringValue!)
        updateText()
    }
    
    func updateText() {
        guard let labelInt:Int = Int(labelString) else {
            return
        }
        if(currentMode == .no_mode_set){
            savedNum = labelInt
        }
        label.text = "\(labelInt)"
    }
    
    func changeMode(_ newMode: modes) {
        if(savedNum == 0){
            return
        }
        currentMode = newMode
        lastButtonWasMode = true
        
    }

}

