//
//  Player.swift
//  Fruit Eater
//
//  Created by Vibhanshu Vaibhav on 11/08/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode {
    
    private var minX = CGFloat(-200), maxX = CGFloat(200)
    
    func initializePlayer() {
        
        name = "Player"
        
        physicsBody = SKPhysicsBody(circleOfRadius: size.height / 2)
        physicsBody?.affectedByGravity = false
        physicsBody?.isDynamic = false
        physicsBody?.categoryBitMask = ColliderType.PLAYER
        physicsBody?.contactTestBitMask = ColliderType.FRUIT_AND_BOMB
        
    }
    
    func move(left: Bool) {
        
        if left {
            position.x -= 15
            
            if position.x < minX {
                position.x = minX
            }
        }
        else {
            position.x += 15
            
            if position.x > maxX {
                position.x = maxX
            }
        }
        
    }
    
}
