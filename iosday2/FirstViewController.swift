//
//  ViewController.swift
//  iosday2
//
//  Created by MacStudent on 2019-03-05.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var lblmessage: UILabel!
    @IBAction func onoffswicth(_ sender: UISwitch) {
        if(sender.isOn)
        {
            self.lblmessage.text = "Switch is ON"
        }
        else
        {
           self.lblmessage.text = "Switch is off"
        }
    }
    
    @IBAction func ShowAlert(_ sender: UIButton) {
        showAlert()
    }
    
    @IBAction func ShowAlert1(_ sender: UIButton) {
        showInputAlert()
    }
    
    func showAlert()
    {
        let alert = UIAlertController(title: "Alert", message: "How are you>", preferredStyle: .alert)
        
        let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action:UIAlertAction) in
            print("Cancel Click")
        })
        
        let actionDestrictive = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        
        alert.addAction(actionDefault)
        alert.addAction(actionCancel)
        alert.addAction(actionDestrictive)
        
        self.present(alert, animated: true)
    }
    
    //Second Type
    func showActionSheet()
    {
        let alert = UIAlertController(title: "Alert", message: "How are you>", preferredStyle: .actionSheet)
        
        let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action:UIAlertAction) in
            print("Cancel Click")
        })
        
        let actionDestrictive = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        
        alert.addAction(actionDefault)
        alert.addAction(actionCancel)
        alert.addAction(actionDestrictive)
        
        self.present(alert, animated: true)
    }
    
    //User Alert type for Input fields
    func showInputAlert()
    {
        let alert = UIAlertController(title: "What's your name?", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Input your name here..."
        })
        
        alert.addTextField { (textField) in
            textField.isSecureTextEntry = true
            textField.placeholder = "Input your password here..."
        }
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            if let name = alert.textFields?.first?.text {
                print("Your name: \(name)")
            }
            
            if let name = alert.textFields?[1].text {
                print("Your password: \(name)")
            }
        }))
        
        self.present(alert, animated: true)
    }
}

 


