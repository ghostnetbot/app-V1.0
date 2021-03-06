//
//  TableViewController.swift
//  CreativeKitSample
//
//  Created by Jordan Zeleny on 4/5/20.
//  Copyright © 2020 Snap Inc. All rights reserved.
//

import UIKit

var userNames = ["Samantha, 19", "Rachel, 18", "Jessica, 21", "Sarah, 18", "Stef, 19", "Jasmine, 18", "Emily, 20"]

var storyViews = ["Story Views: 549", "Story Views: 235", "Story Views: 387", "Story Views: 182", "Story Views: 848", "Story Views: 289", "Story Views: 367",]

var myIndex = 0

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return userNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = userNames[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: indexPath) {
        myIndex = indexPath.row
        performSeque(withIdentifier: "seque", sender: self)
    }

}
