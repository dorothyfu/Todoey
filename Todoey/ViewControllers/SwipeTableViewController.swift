//
//  SwipeTableViewController.swift
//  Todoey
//
//  Created by Dorothy Fu on 2020-02-16.
//  Copyright © 2020 Dorothy Fu. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {

    var cell: UITableViewCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80.0
    }
    
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        
        cell.delegate = self
        
        return cell
    }

    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
         guard orientation == .right else { return nil }
         
         let deleteAction = SwipeAction(style: .destructive, title: "Delete") { actions, indexPath in
            
            self.updateModel(at: indexPath)
         }
         
         deleteAction.image = UIImage(named: "delete-icon")
         
         return [deleteAction]
     }
     
     func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeTableOptions {
         var options = SwipeTableOptions()
         options.expansionStyle = .destructive
         return options
     }
    
    func updateModel(at indexPath: IndexPath) {
        print("Item deleted from superclass")
    }
}
