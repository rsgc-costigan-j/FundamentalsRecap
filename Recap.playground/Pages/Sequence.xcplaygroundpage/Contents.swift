/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence
 
 Some new shape types and options have been added to the Canvas class.
 
 Use this new functionality, and your [knowledge of colour](http://russellgordon.ca/rsgc/2016-17/ics2o/HSB_Colour_Model_-_Summary_-_Swift_3.pdf), to reproduce this abstract version of the eBay logo:
 
 ![new_ebay_logo.png](new_ebay_logo.jpg "Overlapping Shapes Logo")
 
 Color and alpha (transparency) matter.
 
 Try reproducing this image for practice.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 400)
canvas.drawShapesWithBorders = false

//Drawing triangle with custom shape
var points : [NSPoint] = [] // created empty array with type nspoint
canvas.fillColor = Color(hue: 90, saturation: 100, brightness: 85, alpha: 75)
points.append( NSPoint(x: 300, y: 300) )
points.append( NSPoint(x: 450, y:300) )
points.append( NSPoint(x:375, y: 50) )

canvas.drawCustomShape(with: points)

//drawing orange rectangle
//Drawing triangle with custom shape
var points1 : [NSPoint] = [] // created empty array with type nspoint
canvas.fillColor = Color(hue: 40, saturation: 100, brightness: 97, alpha: 75)
points.append( NSPoint(x: 200, y: 50) )
points.append( NSPoint(x: 450, y:50) )
points.append( NSPoint(x:200, y: 200) )
points.append( NSPoint(x:450, y: 200) )
canvas.drawCustomShape(with: points)


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
