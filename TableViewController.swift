//
//  TableViewController.swift
//  
//
//  Created by Jordan Zeleny on 4/5/20.
//

import UIKit

var userNames = ["Samantha, 19", "Rachel, 18", "Jessica, 21", "Sarah, 18", "Stef, 19", "Jasmine, 18", "Emily, 20",]

var storyViews = ["Story Views: 549", "Story Views: 235", "Story Views: 387", "Story Views: 182", "Story Views: 848", "Story Views: 289", "Story Views: 326", ]

var myIndex = 0

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return userNames.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = userNames[indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "seque", sender: self)
    }

}
