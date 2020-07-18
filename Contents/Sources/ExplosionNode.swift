
//
//  Fruit Shooter
//
//  ExplosionNode.swift
//  Created by Ayush Singh on 19/03/2019.
//  Copyright © 2019 Ayush Singh. All rights reserved.
//

import UIKit
import SceneKit

public class ExplosionNode: SCNNode {
    
    public init(targetNode: TargetNode) {
        super.init()
        
        let particleSystem = SCNParticleSystem(named: "Explode.scnp", inDirectory: nil)
        particleSystem?.particleColor = targetNode.typeColor
        
        self.addParticleSystem(particleSystem!)
        self.position = targetNode.presentation.position
    }
    
    public init(position: SCNVector3) {
        super.init()
        
        let particleSystem = SCNParticleSystem(named: "Explode.scnp", inDirectory: nil)
        particleSystem?.particleColor = UIColor.random()
        
        self.addParticleSystem(particleSystem!)
        self.position = position
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

