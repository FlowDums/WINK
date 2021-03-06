//
//  viewScore.swift
//  WINK
//
//  Created by Supinfo on 08/03/2016.
//  Copyright © 2016 Dumas Florian. All rights reserved.
//

import Foundation
import UIKit

class viewScore: UIViewController, UITableViewDelegate, UITableViewDataSource
{
        @IBOutlet weak var tableView: UITableView!
        
        override func viewDidLoad()
        {
            super.viewDidLoad()
                        
            self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        }
        
        let players:[String] = Player.getPlayers()
    
    
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
            return self.players.count;
        }
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        {
            var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
            
            cell.textLabel?.text = self.players[indexPath.row]
            cell.textLabel?.textAlignment = .Center
            
            return cell
        }
 
    
}