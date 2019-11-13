//
//  StudentsListTableViewController.swift
//  Harmanpreet_C0765590_gpaApp
//
//  Created by MacStudent on 2019-11-12.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentsListTableViewController: UITableViewController, UISearchResultsUpdating {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        self.navigationItem.searchController = search
        
    }

    // MARK: - Table view data source

    func updateSearchResults(for searchController: UISearchController) {
            if let searchText = searchController.searchBar.text, !searchText.isEmpty{
        //            filteredNFLTeams = unfilteredNFLTeams.filter { team in
        //                return team.lowercased().contains(searchText.lowercased())
        //            }
                    print(searchText)
                    Student.students = Student.students.filter { (student) -> Bool in
                        let name = student.firstName + " " + student.lastName
                        return name.lowercased().contains(searchText.lowercased())
                    }
        //           print(filter)
                    
        //            Student.students.append(Student(firstName: "abcdefgh", lastName: "ijklmnop", id: "<#T##String#>"))
                }
                    
        //        } else {
        //            filteredNFLTeams = unfilteredNFLTeams
        //        }
            
                tableView.reloadData()
    }
    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

 */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Student.students.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
//        // Configure the cell...
//
//        return cell
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "studentsCell"){
           cell.textLabel?.text = (Student.students[indexPath.row].firstName + " " + Student.students[indexPath.row].lastName)
            return cell
        }
        
        return UITableViewCell()
    }
    
    override func viewWillAppear(_ animated: Bool) {
    //        print(Student.students)
            tableView.reloadData()
        }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
