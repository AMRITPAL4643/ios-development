//
//  ViewController.swift
//  Day3
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var Loginemail: UITextField!
    @IBOutlet weak var LoginPassword: UITextField!
    @IBOutlet weak var Loginemailvalidation: UILabel!
    
    @IBOutlet weak var LoginPasswordvalidation: UILabel!
    @IBOutlet weak var Remembermeswicth: UISwitch!
    @IBOutlet weak var LOginmessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func Sumbitbutton(_ sender: Any) {
        Loginemailvalidation.text = ""
        LoginPasswordvalidation.text = ""
        LOginmessage.text = ""
        if Loginemail.text == "amrit@.com"
        {
            if LoginPassword.text == "amrit"
            {
//                var alert = UIAlertController(title: "alert", message: "login sucessfully", preferredStyle: .alert)
//                var action3 = UIAlertAction(title: "ok", style: .default , handler: nil)
//                alert.addAction(action3)
//                self.present(alert, animated: true)
                
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let homeVC = sb.instantiateViewController(withIdentifier: "Homevc") as! HomeViewController
                self.navigationController?.pushViewController(homeVC, animated: true)
                
                
                
            }else
            {
                LoginPasswordvalidation.text = "invalid password"
            }
        }else{
            Loginemailvalidation.text = "invalid email"
        }
    }
    
}

