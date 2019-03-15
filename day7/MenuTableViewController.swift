//
//  ViewController.swift
//  day7
//
//  Created by MacStudent on 2019-03-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                    if indexPath.section == 0
                    {
                        switch indexPath.row {
                        case 0:
                            print("Go to Home")
                            let sb = UIStoryboard(name: "Main", bundle: nil)
                            let studentDetailsVC = sb.instantiateViewController(withIdentifier: "studentDetailsVC") as! StudentViewController
                            self.navigationController?.pushViewController(studentDetailsVC, animated: true)
        if indexPath.section == 0
        {
        switch indexPath.row
            {
                case 0:
                print("go to home page")
                case 1:
                print("go to products")
        case 2:
            print("go to History page")
        
        default:
            print("invalid Option")
        }
        }else{
            switch indexPath.row
            {
            case 0:
                print("go to home page")
            case 1:
                print("go to About Us")
            case 2:
                print("go to Contact Us")
            case 3:
                print("call logout")
            default:
                print("invalid Option")
        }

}
                       
                        default:
                            print("")
                        }
}
    }}
