//#-hidden-code

//
//  Fruit Shooter
//
//  Contents.swift
//  Created by Ayush Singh on 19/03/2019.
//  Copyright © 2019 Ayush Singh. All rights reserved.
//

//#-end-hidden-code

//: ## Fruit Shooter
/*:
 ##
 ![](Fruit-Shooter.png "Fruit Shooter Image")
 
 Hi! I'm **Ayush Singh**, a student of Macro Vision Academy(Apple Distinguished School), Burhanpur, M.P, India. I've devoted to iOS development since 2017 and this year, and I have developed ios app for Macro Vision Academy(the app will coming soon on appstore). I made some digging into the latest `ARKit`, which is awesome and easy to use! So I created a Fruit Shooter game for WWDC 2019 scholarship submission. Hope you like it! 😊
 
 ### Welcome
 
 In order to let you get familiar with the game quickly, I gave you information about game. After tapping the `Run My Code` button, move your iPad around and fix the score node by shooting a bullet. Once done, a crosshair will show up in the center of the screen. Then, please use the front sight (also in the center of screen) to aim the Fruits, and tap the screen to shoot them!
 
 #### Notice
 
 * When the game starts, keep your iPad at the same height as your head to find the fruit.
 * Scoring of game is when you shoot fruit you got 4 points, otherwise you got negetive points according to fruit size point, play carefully.
 * It is recommended to run the game in a **portrait** mode.
 * It is better to run game in **full screen portrait** mode.
 
 */


let gravity: UInt = 2

//#-hidden-code
import UIKit
import PlaygroundSupport

let viewController = ArcadeViewController(gravityValue: gravity)

PlaygroundPage.current.liveView = viewController
PlaygroundPage.current.needsIndefiniteExecution = true
//#-end-hidden-code
