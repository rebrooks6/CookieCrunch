//
//  GameViewController.swift
//  CookieCrunch
//
//  Created by Kayla Brooks on 8/11/16.
//  Copyright © 2016 Robert Brooks. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    var scene: GameScene!
    var level: Level!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure the view.
        let skView = view as! SKView
        skView.isMultipleTouchEnabled = false
        
        // Create and configure the scene.
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        
        level = Level(filename: "Level_1")
        scene.level = level
        scene.addTiles()
        
        // Present the scene.
        skView.presentScene(scene)
        
        beginGame()
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func beginGame() {
        shuffle()
    }
    
    func shuffle() {
        let newCookies = level.shuffle()
        scene.addSpritesForCookies(cookies: newCookies)
    }
}
