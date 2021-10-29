//
//  Player.swift
//  WalkIt
//
//  Created by user on 2021-10-29.
//

import Foundation

struct Player{
    var id = UUID()
    var name: String = ""
    var tokenCount : Int = 0 // Number of tokens (score) the player has
    var xPos : Double = 0
    var yPos : Double = 0

    
    init() {
        
    }
    
    init(xPos: Double, yPos: Double, name: String) {
        self.xPos = xPos
        self.yPos = yPos
        self.tokenCount = 0
        self.name = name
        
    }
}
