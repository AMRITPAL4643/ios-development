//
//  countryTableViewController.swift
//  daysix
//
//  Created by MacStudent on 2019-03-09.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class countryTableViewController: UITableViewController {
    var countrylist: [country]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
func getInitialCountryList()
{
    countrylist.append(country(countryCode: "CAD", countryName: "canada" , countryFlagName: "f.png"))
    countrylist.append(country(countryCode: "AUS", countryName: "Australia" , countryFlagName: "a.png"))
     countrylist.append(country(countryCode: "fgh", countryName: "india" , countryFlagName: "b.png"))
     countrylist.append(country(countryCode: "hjk", countryName: "karela" , countryFlagName: "c.png"))
     countrylist.append(country(countryCode: "hjk", countryName: "punjab" , countryFlagName: "d.png"))
     countrylist.append(country(countryCode: "lkj", countryName: "bughipura" , countryFlagName: "e.png"))
     countrylist.append(country(countryCode: "xcv", countryName: "mehna" , countryFlagName: "f.png"))
     countrylist.append(country(countryCode: "hjk", countryName: "dala" , countryFlagName: "g.png"))
     countrylist.append(country(countryCode: "tyu", countryName: "butter" , countryFlagName: "h.png"))
    
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  self.countrylist.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        _ = tableView.dequeueReusableCell(withIdentifier: "countryIdentifier", for: indexPath)
        
        // Configure the cell...
        let country  = self.countrylist[indexPath.row]
        cell.textLabel?.text = country.countryName
        cell.detailTextLabel?.text = country.countryCode
        cell.imageView?.image = UIImage(named: country.countryFlagName)
        
        return cell
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
