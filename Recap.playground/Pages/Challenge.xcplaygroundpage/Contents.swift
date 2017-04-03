/*:
 [Previous](@previous)
 
 # Challenge
 
 Mr. Gordon was at IKEA a few weeks ago and noticed this pattern:
 
 ![pattern.jpg](pattern.jpg "pattern")
 
 Use any of the concepts you have learned so far in this course to reproduce the wallpaper pattern shown above.
 
 - note: The photo was not taken "straight on" against the wall, so the image has perspective.  You do not need to reproduce that part of the image.  In other words, no need to create the appearance of "depth", just reproduce colours and shapes.
 
 - callout(Hint): Look for elements of repetition in the pattern. Try to reproduce a portion of the image, then simply *repeat* the pattern.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 400, height: 400)

for y in stride(from: 370, to: 30, by: -150){
for x in stride(from: 30, to: 401, by: 55){
canvas.fillColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
canvas.fillColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
canvas.drawEllipse(centreX: x, centreY: y, width: 35, height: 35)
canvas.fillColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
canvas.drawEllipse(centreX: x, centreY: y, width: 20, height: 20)
canvas.fillColor = Color(hue: 1, saturation: 0, brightness: 98, alpha: 100)
canvas.drawEllipse(centreX: x, centreY: y, width: 5, height: 5)
}
}
for h in stride(from: 320, to: 80, by: -150){
    for w in stride(from: 57.5, to: 401, by: 55){
        canvas.fillColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
        canvas.drawEllipse(centreX: Int(w), centreY: h, width: 50, height: 50)
        canvas.fillColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
        canvas.drawEllipse(centreX: Int(w), centreY: h, width: 35, height: 35)
        canvas.fillColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
        canvas.drawEllipse(centreX: Int(w), centreY: h, width: 20, height: 20)
        canvas.fillColor = Color(hue: 1, saturation: 0, brightness: 98, alpha: 100)
        canvas.drawEllipse(centreX: Int(w), centreY: h, width: 5, height: 5)
    }
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
