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
  
  // Normalize the vector
  mouse.normalize();
  
  // Scale the vector - 50x
  mouse.mult(50);
  
  // Draw a rectangle to illustrate the magnitude of the vector
  float m = mouse.mag();
  fill(0); // black fill
  rect(0, 0, m, 10);

  // Move the origin of the canvas to the middle of the window
  translate(width/2, height/2);
  
  // Draw a line to represent the vector from the origin to the mouse location
  line(0, 0, mouse.x, mouse.y);
  
}