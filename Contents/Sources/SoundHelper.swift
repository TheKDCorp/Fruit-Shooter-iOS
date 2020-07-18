
//
//  Fruit Shooter
//
//  SoundHelper.swift
//  Created by Ayush Singh on 19/03/2019.
//  Copyright © 2019 Ayush Singh. All rights reserved.
//

import Foundation
import SceneKit
import AudioToolbox

public enum SoundType: String {
    case shoot
    case hit
    case success
    case appear
}

public class SoundHelper: NSObject {
    
    public static let shared: SoundHelper = SoundHelper()
    
    private var soundIds: [SoundType: SystemSoundID] = [:]
    
    private override init() {
        for type in [SoundType.hit, SoundType.shoot, SoundType.success, SoundType.appear] {
            var soundID: SystemSoundID = 0
            let path = Bundle.main.path(forResource: type.rawValue, ofType: "wav")
            let baseURL = NSURL(fileURLWithPath: path!)
            AudioServicesCreateSystemSoundID(baseURL, &soundID)
            
            soundIds[type] = soundID
        }
    }
    
    public func playSound(of type: SoundType) {
        AudioServicesPlaySystemSound(soundIds[type]!)
    }
    
}

