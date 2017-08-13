//
//  ItemController.swift
//  Fruit Eater
//
//  Created by Vibhanshu Vaibhav on 11/08/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import SpriteKit

struct ColliderType {
    static let PLAYER : UInt32 = 0
    static let FRUIT_AND_BOMB : UInt32 = 1
}

class ItemController {
    
    private var minX = CGFloat(-200), maxX = CGFloat(200)
    
    func spawnItems() -> SKSpriteNode {
        
        let item: SKSpriteNode?
        
        let randNum = randomNumbers(numParas: 6)
        
        if randNum == 6 {
            item = SKSpriteNode(imageNamed: "Bomb")
            item?.name = "Bomb"
            item?.setScale(0.6)
            item?.physicsBody = SKPhysicsBody(circleOfRadius: (item?.size.height)! / 2)
        }
        else {
            item = SKSpriteNode(texture : SKTexture(imageNamed: "Fruit \(randNum)"))
            item?.name = "Fruit"
            item?.setScale(0.7)
            item?.physicsBody = SKPhysicsBody(circleOfRadius: (item?.size.height)! / 2)
        }
        
        item?.physicsBody?.categoryBitMask = ColliderType.FRUIT_AND_BOMB
        item?.zPosition = 3
        item?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        item?.position.x = CGFloat(randomNumbers(numParas: 400) - 200)
        item?.position.y = 500
        
        return item!
        
    }
    
    func randomNumbers(numParas : Int) -> Int {
        return Int(arc4random_uniform(UInt32(numParas)) + 1)
    }
    
}
