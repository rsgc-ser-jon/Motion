// Global variables
Bouncer ball;

// Runs once
void setup() {
  size(640, 360);
  background(255);
  
  // Create an instance of the Bouncer class
  ball = new Bouncer();
}

// Runs forever
void draw() {
  
  // Clear the background
  background(255);
  
  // Move, check for edges (bounce if needed) then display
  ball.update();
  ball.checkEdges();
  ball.display();

}