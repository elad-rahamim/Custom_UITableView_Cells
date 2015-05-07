//
//  TableView.swift
//  Custom_UITableView_Cells
//
//  Created by Elad Rahmim on 5/7/15.
//  Copyright (c) 2015 Elad Rahmim. All rights reserved.
//

import Foundation
import UIKit

class TableView: UITableViewController {
    var items = ["Home", "About", "FaceBook"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Menu"
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    // Return the row for the corresponding section and row
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell_ : UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("CELL_ID") as? UITableViewCell
        
        if(cell_ == nil)
        {
            cell_ = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "CELL_ID")
        }
        
        
        cell_!.textLabel!.text = items[indexPath.row] as String
        return cell_!
        
    }
    
    
}


