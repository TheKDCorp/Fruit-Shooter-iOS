
//
//  Fruit Shooter
//
//  ScoreNode.swift
//  Created by Ayush Singh on 19/03/2019.
//  Copyright © 2019 Ayush Singh. All rights reserved.
//

import UIKit
import SceneKit

public class ScoreNode: SCNNode {
    
    override public init() {
        super.init()
        
        let text = SCNText(string: "", extrusionDepth: 0.5)
        text.chamferRadius = 1.0
        text.flatness = 0.1
        text.font = UIFont.systemFont(ofSize: 40.0, weight: .bold)
        self.geometry = text
        self.scale = SCNVector3(0.05, 0.05, 0.05)
        self.position = SCNVector3(-0.5, 0, -10)
        let (minBound, maxBound) = text.boundingBox
        self.pivot = SCNMatrix4MakeTranslation((maxBound.x - minBound.x) / 2, minBound.y, 0.5 / 2)
         
        update(score: 0)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func update(score: Int) {
        let text = self.geometry as! SCNText
        text.string = "\(score)"
        let material = SCNMaterial()
        material.diffuse.contents = UIColor.random()
        self.geometry?.materials = [material]
    }
    
}
