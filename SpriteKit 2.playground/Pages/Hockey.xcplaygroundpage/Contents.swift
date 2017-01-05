//: [Previous](@previous)

import SpriteKit
import PlaygroundSupport

let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)
let goaliePlace = CGPoint(x: 150, y: 75)

var scene = SKScene(size: frame.size)

let background = SKSpriteNode(imageNamed: "net")
background.zPosition = 1
background.position = midPoint
background.setScale(0.5)
scene.addChild(background)

let goalie = SKSpriteNode(imageNamed: "goalie")
goalie.position = goaliePlace
goalie.setScale(0.09)

let actionMoveLeft = SKAction.moveBy(x: -70, y: 0, duration: 0.75)
let actionMoveRight = SKAction.moveBy(x: 70, y: 0, duration: 0.75)
let actionSequence = SKAction.sequence([actionMoveLeft, actionMoveRight])
let actionRepeat = SKAction.repeatForever(actionSequence)
goalie.run(actionRepeat)
goalie.zPosition = 10  // Ensure sprite is above background
scene.addChild(goalie) // Add to the scene

let actionPlaySound = SKAction.playSoundFileNamed("song.mp3", waitForCompletion: false)
scene.run(actionPlaySound)

//: And show the scene in the liveView

let view = SKView(frame: frame)
view.presentScene(scene)
PlaygroundPage.current.liveView = view

//: [Next](@next)
