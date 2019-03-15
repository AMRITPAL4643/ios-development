//
//  ViewController.swift
//  day8.plistEmployList
//
//  Created by MacStudent on 2019-03-12.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.readInformationPlist()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    
    func readInformationPlist() {
        if let bundlePath = Bundle.main.path(forResource: "Employ", ofType: "plist") {
            let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            
            print(dictionary!.description)
            let countryList = dictionary!["countries"] as! NSArray
           
            print(countryList[0])
            for c in countryList
            {
                print(c)
            }
            
            print("emplyees list")
            let employeesList = dictionary!["employees"] as! NSArray
            
            print(employeesList[0])
            for e in employeesList
            {
                print(e)
        }
             let EmployeesList = dictionary!["employees"] as! NSArray
            for a in EmployeesList
            {
                let emp = a as! NSDictionary
                print("employee Name : \(emp["ename"]!)")
                print("employee ID : \(emp["eid"]!)")
                print("employee salary : \(emp["Salary"]!)")
                
            }
}
        

}
}
