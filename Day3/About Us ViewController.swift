//
//  About Us ViewController.swift
//  Day3
//
//  Created by MacStudent on 2019-03-06.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class About_Us_ViewController: UIViewController {
    var x: Int?
    @IBOutlet weak var lblanimalname: UILabel!
    @IBOutlet weak var imganimal: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let i = x
        {
            print(i)
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
        switch sender.selectedSegmentIndex {
        case 0:
            lblanimalname.text = "dog"
            imganimal.image = UIImage(named: "dog.jpeg")
        case 1:
            lblanimalname.text = "Tiger"
             imganimal.image = UIImage(named: "Tiger.jpeg")
        case 2:
            lblanimalname.text = "cat"
             imganimal.image = UIImage(named: "cat.jpeg")
        default:
            print("invlid selection")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
