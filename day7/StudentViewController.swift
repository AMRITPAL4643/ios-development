//
//  StudentViewController.swift
//  day7
//
//  Created by MacStudent on 2019-03-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var tv1: UITableView!
    
var stud = [student]()
    override func viewDidLoad() {
        super.viewDidLoad()
getstudent()
        self.tv1.delegate = self
        self.tv1.dataSource = self
        
        
    }
    
    func getstudent()
    {
        stud = []
        stud.append(student(StudentFirstName:"samir",StudentLastName:"thaker",StudentGender:"male",StudentResult:"pass"))
        stud.append(student(StudentFirstName:"mandeep",StudentLastName:"kaur",StudentGender:"female",StudentResult:"pass"))
        stud.append(student(StudentFirstName:"priya",StudentLastName:"aggarwal",StudentGender:"female",StudentResult:"pass"))
        stud.append(student(StudentFirstName:"gurminder",StudentLastName:"kaur",StudentGender:"female",StudentResult:"pass"))
        stud.append(student(StudentFirstName:"maninder",StudentLastName:"singh tuli",StudentGender:"male",StudentResult:"pass"))
        stud.append(student(StudentFirstName:"jay",StudentLastName:"aggarwal",StudentGender:"male",StudentResult:"fail"))
        stud.append(student(StudentFirstName:"kunal",StudentLastName:"singh",StudentGender:"male",StudentResult:"fail"))
        stud.append(student(StudentFirstName:"priyanka",StudentLastName:"kaur",StudentGender:"female",StudentResult:"fail"))
        stud.append(student(StudentFirstName:"harsh",StudentLastName:"patel",StudentGender:"male",StudentResult:"pass"))
        stud.append(student(StudentFirstName:"smit",StudentLastName:"patel",StudentGender:"male",StudentResult:"pass"))
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.stud.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! StudentDetailsTableViewCell
        
        let a = self.stud[indexPath.row]
        cell.lblStudentFirstName.text = a.StudentFirstName
        cell.lblStudentLastName.text = a.StudentLastName
        cell.lblStudentGender.text = a.StudentGender
        cell.lblStudentResult.text = a.StudentResult
        
    return cell
    
}

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }

}
