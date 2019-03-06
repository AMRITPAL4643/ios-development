//
//  ViewController.swift
//  iosday2
//
//  Created by MacStudent on 2019-03-05.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  
    @IBOutlet weak var showalert2: UIButton!
    @IBOutlet weak var res: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


   
    @IBAction func sw1(_ sender: UISwitch) {
        if sender.isOn
        {
            res.text="on"
        }
        else
        {
            res.text = "off"
        }
    }
    
    @IBAction func ShowALERTbtn(_ sender: Any)
    {
        var alert = UIAlertController(title: "Alert", message: "how r u", preferredStyle: .alert)
        var action1 = UIAlertAction(title: "ok", style: .default, handler: nil)
        var action3 = UIAlertAction(title: "Delete", style: .destructive , handler: nil)
        var action2 = UIAlertAction(title: "cancel", style: .cancel, handler:{(action:UIAlertAction) in print("why")})
        
        
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        
        
        self.present(alert, animated: true)
    }
    func showalert()
    {
        var alert = UIAlertController(title: "Alert", message: "how r u", preferredStyle: .alert)
        var action1 = UIAlertAction(title: "ok", style: .default, handler: nil)
        var action3 = UIAlertAction(title: "Delete", style: .destructive , handler: nil)
        var action2 = UIAlertAction(title: "cancel", style: .cancel, handler:{(action:UIAlertAction) in print("why")})
        
        
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        
        
        self.present(alert, animated: true)
    }
    func
}


