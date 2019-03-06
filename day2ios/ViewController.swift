//
//  ViewController.swift
//  day2ios
//
//  Created by MacStudent on 2019-03-05.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var a: Int = 0
    var b: Int = 0
    var c: Int = 0
    @IBOutlet weak var txtno1: UITextField!
    @IBOutlet weak var txtno2: UITextField!
    @IBOutlet weak var lblresult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func btnADD(_ sender: UIButton) {
        a = Int(txtno1.text!)!
        b = Int(txtno2.text!)!
        c = a + b
        lblresult.text = String(c)
    }
 
    @IBAction func btnSub(_ sender: UIButton) {
        a = Int(txtno1.text!)!
        b = Int(txtno2.text!)!
        c = a - b
        lblresult.text = String(c)
    }
    
    @IBAction func btnMul(_ sender: UIButton) {
        a = Int(txtno1.text!)!
        b = Int(txtno2.text!)!
        c = a * b
        lblresult.text = String(c)
    }
    @IBAction func btnDiv(_ sender: UIButton) {
        a = Int(txtno1.text!)!
        b = Int(txtno2.text!)!
        c = a / b
        lblresult.text = String(c)
    }
    @IBAction func btnSumbit(_ sender: UIButton) {
    }
    
    
    
    
    
    }
    


