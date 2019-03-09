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
     var userDefault = UserDefaults.standard
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
             //var alert = UIAlertController(title: "alert", message: "login sucessfully", preferredStyle: .alert)
             //   let action3 = UIAlertAction(title: "ok", style: .default , handler: nil);               alert.addAction(action3)
             //  self.present(alert, animated: true)
               
                if(Remembermeswicth.isOn)
                {
                    
                    userDefault.set(LoginPassword, forKey: "txtUserPassword")
                    userDefault.set(Loginemail, forKey: "Loginemail")
                }
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let homevc = sb.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
                self.navigationController?.pushViewController(homevc, animated: true)
                
            }else{
                print("Remove UserId/Password")
                userDefault.removeObject(forKey: "Loginemail")
                userDefault.removeObject(forKey: "LoginPassword")
            }
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let homeVC = sb.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
           // homeVC.userDefault = email
            self.navigationController?.pushViewController(homeVC, animated: true)
                
                
            }else
            {
                LoginPasswordvalidation.text = "invalid password"
            }
    }
    }
    


