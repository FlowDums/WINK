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
    public var time: Float

    public static var players: [String] = []
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    init(playerName:String, playerScore:String)
    {
        self.name = playerName.uppercaseString
        self.time = Float(playerScore.stringByReplacingOccurrencesOfString(":", withString: "."))!
        self.addPlayer()
    }
    
    public func getName() -> String
    {
        return self.name
    }
    
    public func getTime() -> String
    {
        return self.time.description + "s"
    }
    
    public func addPlayer()
    {
        //resetData()
        
        Player.players = userDefaults.objectForKey("lesjoueurs") as? [String] ?? [String]()
        
        var space: String = "\t"
        let nbSpace: Int = 20 - self.name.characters.count
        
        for _ in 1...nbSpace
        {
            space += "  "
        }
        
        Player.players.append(self.getName() + space + self.getTime())
        
        userDefaults.setObject(Player.players, forKey: "lesjoueurs")
    }
    
    public static func getPlayers() -> [String]!
    {
        return Player.players
    }
    
    public func resetData()
    {
        userDefaults.setObject(nil, forKey: "lesjoueurs")
    }
    
}