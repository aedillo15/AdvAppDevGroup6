//
//  Player.swift
//  WalkIt
//
//  Created by user on 2021-10-29.
//

import Foundation

struct Player: Hashable{
    var id = UUID()
    var username: String = ""
    var email: String = ""
    var password: String = ""
    var tokenCount : Int = 0 // Number of tokens (score) the player has
    var xPos : Double = 0
    var yPos : Double = 0

    
    init() {
        
    }
    
    init(  xPos: Double, yPos: Double, username: String, email: String, password: String, id: UUID) {
        self.id = id
        self.email = email
        self.password = password
        self.xPos = xPos
        self.yPos = yPos
        self.tokenCount = 0
        
    }
}
