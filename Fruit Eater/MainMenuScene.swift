//
//  MainMenuScene.swift
//  Fruit Eater
//
//  Created by Vibhanshu Vaibhav on 11/08/17.
//  Copyright © 2017 Vibhanshu Vaibhav. All rights reserved.
//

import SpriteKit

class MainMenuScene: SKScene {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            
            let location = touch.location(in: self)
            
            if atPoint(location).name == "Start" {
                
                if let scene = GameplaySceneClass(fileNamed: "GameplayScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view?.presentScene(scene, transition: .doorsOpenVertical(withDuration: 2))
                }
                
            }
            
        }
        
    }
    
}
