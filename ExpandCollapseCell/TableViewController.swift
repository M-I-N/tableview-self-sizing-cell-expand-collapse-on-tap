//
//  TableViewController.swift
//  ExpandCollapseCell
//
//  Created by Mufakkharul Islam Nayem on 2/17/20.
//  Copyright © 2020 Mufakkharul Islam Nayem. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var objects = Array(repeating: TableViewCellViewModel(state: .expanded), count: 25)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension TableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! TableViewCell
        
        cell.viewModel = objects[indexPath.row]
        
        return cell
    }
    
}

extension TableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        objects[indexPath.row].state.toggle()
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
}
