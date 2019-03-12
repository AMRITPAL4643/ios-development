//
//  ViewController.swift
//  dayfive
//
//  Created by MacStudent on 2019-03-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
   
    @IBOutlet weak var friendsPicker: UIPickerView!
    @IBOutlet weak var lblfriends: UILabel!
    
    var friendslist = ["amrit","samir","manu","mani","abc","ghj","jkl","tyu","ghj","dfg"]
    var citylist = ["a","b","c","d","e","f","g","h","i","j"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.friendsPicker.delegate = self
        self.friendsPicker.dataSource = self
    }


    @IBAction func birthdatepicker(_ sender: UIDatePicker)
    {
        print(sender.date)
      
    }
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return self.friendslist.count
        }else{
            return self.citylist.count
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return self.friendslist[row]
        }else{
            return self.citylist[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.lblfriends.text = self.friendslist[row]
    }
    
}


