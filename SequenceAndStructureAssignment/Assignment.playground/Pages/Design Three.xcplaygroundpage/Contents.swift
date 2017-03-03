/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Three
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Generate a grid
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 1

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        // Draw the shapes
    
        canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
    }
}

//Circles and squares in middle

canvas.fillColor = Color.black
canvas.drawShapesWithFill = true
for z in stride(from: 0, through: 300, by: 75){
    canvas.drawEllipse(centreX: 250, centreY: 250, width: z, height: z)
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */


canvas.drawShapesWithFill = true
for z in stride(from: 0, through: 300, by: 75){
    canvas.drawEllipse(centreX: 250, centreY: 250, width: z, height: z)
}
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.white

for w in stride(from: 0, through: 210, by: 70) {
    canvas.drawRectangle(centreX: 250, centreY: 250, width: w, height: w)
}

canvas.drawLine(fromX: 0, fromY: 500, toX: 50, toY: 400)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */



PlaygroundPage.current.liveView = canvas.imageView
