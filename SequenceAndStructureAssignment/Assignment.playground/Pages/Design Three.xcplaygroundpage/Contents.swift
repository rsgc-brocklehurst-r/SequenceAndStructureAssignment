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
canvas.drawShapesWithBorders = false
canvas.drawEllipse(centreX: 250, centreY: 250, width: 300, height: 300)
canvas.fillColor = Color.white
canvas.drawRectangle(centreX: 250, centreY: 250, width: 212, height: 212)
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 250, centreY: 250, width: 212, height: 212)
canvas.fillColor = Color.white
canvas.drawRectangle(centreX: 250, centreY: 250, width: 150, height: 150)
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 250, centreY: 250, width: 150, height: 150)
canvas.fillColor = Color.white
canvas.drawRectangle(centreX: 250, centreY: 250, width: 106, height: 106)
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 250, centreY: 250, width: 106, height: 106)
for v in stride(from: 0, through: 200, by: 50) {
canvas.drawLine(fromX: v, fromY: 500, toX: v + 50, toY: 400)
}
for z in stride(from: 300, through: 500, by: 50) {
    canvas.drawLine(fromX: z, fromY: 500, toX: z - 50, toY: 400)
}
for w in stride(from: 0, through: 200, by: 50) {
    canvas.drawLine(fromX: w, fromY: 0, toX: w + 50, toY: 100)
}
for u in stride(from: 300, through: 500, by: 50) {
    canvas.drawLine(fromX: u, fromY: 0, toX: u - 50, toY: 100)
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */



PlaygroundPage.current.liveView = canvas.imageView
