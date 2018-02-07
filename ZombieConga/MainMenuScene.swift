//
//  MainMenuScene.swift
//  ZombieConga
//
//  Created by Christine Buell on 2/6/18.
//  Copyright © 2018 Christine Buell. All rights reserved.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
    
    override init(size: CGSize) {
        super.init(size: size)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init coder has not been implemented")
    }
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "MainMenu.png")
        background.position =
            CGPoint(x: size.width/2, y: size.height/2)
        self.addChild(background)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       sceneTapped()
    }
    
    func sceneTapped() {
        
        let wait = SKAction.wait(forDuration: 1.0)
        let block = SKAction.run{
            let myScene = GameScene(size: self.size)
            myScene.scaleMode = self.scaleMode
            let reveal = SKTransition.doorway(withDuration: 2.0)
            self.view?.presentScene(myScene,  transition: reveal)
        }
        self.run(SKAction.sequence([wait, block]))
//        let wait = SKAction.wait(forDuration: 3.0)
//        let block = SKAction.run {
//        let scene = GameScene(size: self.size)
//        scene.scaleMode = self.scaleMode
//        let reveal = SKTransition.doorway(withDuration: 1.5)
//            self.view?.presentScene(scene, transition: reveal)
//    }
//        self.run(wait, block]))
    }
        
}
