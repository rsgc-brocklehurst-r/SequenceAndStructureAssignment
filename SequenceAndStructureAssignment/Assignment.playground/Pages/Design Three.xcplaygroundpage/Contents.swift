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

// Circles and squares in middle (sequence)

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

// Draw lines on top and bottom (loop and if statement)
for v in stride(from: 0, through: 500, by: 50) {
    if v % 500 == 250 {
        
    } else {
    if v > 200 {
        canvas.drawLine(fromX: v, fromY: 500, toX: v - 50, toY: 400)
    } else { canvas.drawLine(fromX: v, fromY: 0, toX: v + 50, toY: 100)
}
}
}
for z in stride(from: 0, through: 500, by: 50) {
    if z < 250 {
        canvas.drawLine(fromX: z, fromY: 500, toX: z + 50, toY: 400)
    } else {
        canvas.drawLine(fromX: z, fromY: 100, toX: z + 50, toY: 0)
    }
}

// Draw coloured squares and diamonds (more loops, sequence)
canvas.defaultLineWidth = 5
for w in stride(from: 100, through: 300, by: 100) {
        canvas.drawLine(fromX: 0, fromY: w, toX: 50, toY: w + 100)
        canvas.drawLine(fromX: 50, fromY: w, toX: 100, toY: w + 100)
        canvas.drawLine(fromX: 400, fromY: w, toX: 450, toY: w + 100)
        canvas.drawLine(fromX: 450, fromY: w, toX: 500, toY: w + 100)
}
for u in stride(from: 100, through: 300, by: 100) {
        canvas.drawLine(fromX: 0, fromY: u + 100, toX: 50, toY: u)
        canvas.drawLine(fromX: 50, fromY: u + 100, toX: 100, toY: u)
        canvas.drawLine(fromX: 400, fromY: u + 100, toX: 450, toY: u)
        canvas.drawLine(fromX: 450, fromY: u + 100, toX: 500, toY: u)
    }

// Coloured squares
for t in stride(from: 100, through: 300, by: 100) {
    var c = random(from: 0, toButNotIncluding: 361)
    canvas.fillColor = Color(hue: c, saturation: 100, brightness: 100, alpha: 50)
    canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: t, width: 100, height: 100)
  
}
for t in stride(from: 100, through: 300, by: 100) {
    var c = random(from: 0, toButNotIncluding: 361)
    canvas.fillColor = Color(hue: c, saturation: 100, brightness: 100, alpha: 50)
  canvas.drawRectangle(bottomLeftX: 400, bottomLeftY: t, width: 100, height: 100)
}

canvas.copyToClipboard()
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */



PlaygroundPage.current.liveView = canvas.imageView
