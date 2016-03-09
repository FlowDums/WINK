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
    public var name: String
    public var time: String

    //public static var players: [Player] = []
    public static var players: [String] = []
    
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
    
    public func addPlayer()
    {
        Player.players.append(self.getName() + " --------------- " + self.getTime())//(self)
    }
    
    public static func getPlayers() -> [String]!//[Player]!
    {
        return Player.players
    }
    
}