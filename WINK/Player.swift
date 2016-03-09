//
//  scores.swift
//  WINK
//
//  Created by Supinfo on 08/03/2016.
//  Copyright © 2016 Dumas Florian. All rights reserved.
//

import UIKit
import Foundation

public class Player
{
    var name: String
    var time: String
    
    var players: UITableView!
    
    init(playerName:String, playerScore:String)
    {
        self.name = playerName
        self.time = playerScore
        self.addPlayer()
    }
    
    public func getName() -> String
    {
        return self.name
    }
    
    public func getTime() -> String
    {
        return self.time
    }
    
    private func addPlayer()
    {
        
    }
    
}