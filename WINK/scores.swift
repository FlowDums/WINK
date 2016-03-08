//
//  scores.swift
//  WINK
//
//  Created by Supinfo on 08/03/2016.
//  Copyright © 2016 Dumas Florian. All rights reserved.
//

import UIKit
import Foundation

public class scores
{
    var name: String
    var time: NSTimer
    var players: UITableView!
    
    init(playerName:String, playerScore:NSTimer)
    {
        self.name = playerName
        self.time = playerScore
        self.addPlayer()
    }
    
    private func addPlayer()
    {
        var player: UITableViewCell!
        
        player.textLabel?.text = self.name
        
        players.dequeueReusableCellWithIdentifier(self.name)
        
        
        
    }
    
    
    
    
}