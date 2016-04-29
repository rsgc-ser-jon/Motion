// Runs once
void setup() {

  // Create a white background
  size(640, 360);
  background(255);

}

// Runs forever
void draw() {
  
  // Clear the background
  background(255);

  // Two vectors created each time draw() loops
  // One for the mouse location, one for the centre of the canvas
  RVector mouse = new RVector(mouseX, mouseY);
  RVector centre = new RVector(width/2, height/2);
  
  // Use vector subtraction to determine the length of the line
  mouse.sub(centre);
  
  // Place the origin of the canvas in the middle of the window
  translate(width/2, height/2);
  
  // Draw a line to represent the vector from the origin to the mouse location
  line(0, 0, mouse.x, mouse.y);
  
}