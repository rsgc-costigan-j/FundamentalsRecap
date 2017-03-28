/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration and Conditionals
 
 Use what you have learned about translation and rotation to reproduce this image:
 
 ![flower.png](flower.png "Flower")
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)

for z in stride(from: 0, to: 20, by: 1){
    canvas.drawEllipse(centreX: 200, centreY: 200, width: 350, height: 15)
    var x = 18
    canvas.rotate(by: Degrees(x))
    canvas.translate(byX: -x, byY: x)
    x + 18
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
