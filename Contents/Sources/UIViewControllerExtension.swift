
//
//  Fruit Shooter
//
//  UIViewControllerExtension.swift
//  Created by Ayush Singh on 19/03/2019.
//  Copyright © 2019 Ayush Singh. All rights reserved.
//

import UIKit
import ARKit

public extension UIViewController {
    
    func playSound(_ type: SoundType) {
        SoundHelper.shared.playSound(of: type)
    }
    
    func getUserVector(in frame: ARFrame?) -> (direction: SCNVector3, position: SCNVector3) {
        if let _ = frame {
            let mat = SCNMatrix4(frame!.camera.transform)
            let direction = SCNVector3(-mat.m31, -mat.m32, -mat.m33)
            let position = SCNVector3(mat.m41, mat.m42, mat.m43)
            return (direction, position)
        } else {
            return (.zero, .zero)
        }
    }
    
}
