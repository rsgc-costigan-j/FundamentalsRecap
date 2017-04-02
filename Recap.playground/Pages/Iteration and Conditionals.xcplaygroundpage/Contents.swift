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
canvas.translate(byX: 200, byY: 200)

for z in stride(from: 0, to: 20, by: 1){
    canvas.fillColor = Color(hue: 153, saturation: 100, brightness: 100, alpha: 75)
    canvas.drawEllipse(centreX: 0, centreY: 0, width: 350, height: 15)
    var x = 18
    canvas.rotate(by: Degrees(x))
}
for y in stride(from: 0, to: 10, by: 1){
    var r = 36
    canvas.rotate(by: Degrees(r))
    canvas.drawEllipse(centreX: 0, centreY: 0, width: 275, height: 15)
    
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
