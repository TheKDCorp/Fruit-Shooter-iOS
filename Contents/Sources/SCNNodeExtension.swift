
//
//  Fruit Shooter
//
//  SCNNodeExtension.swift
//  Created by Ayush Singh on 19/03/2019.
//  Copyright © 2019 Ayush Singh. All rights reserved.
//

import Foundation
import SceneKit

public extension SCNNode {
    
    public static func lineFrom(from: SCNVector3, to: SCNVector3, radius: CGFloat = 0.0001) -> SCNNode {
        let vector = to - from
        let height = vector.length
        let cylinder = SCNCylinder(radius: radius,
                                   height: CGFloat(height))
        cylinder.radialSegmentCount = 24
        let node = SCNNode(geometry: cylinder)
        node.position = (to + from) * 0.5
        node.eulerAngles = SCNVector3.lineEulerAngles(vector: vector)
        let material = SCNMaterial()
        material.diffuse.contents = UIColor(white: 1.0, alpha: 0.5)
        cylinder.materials = [material, material, material]
        return node
    }
    
}
