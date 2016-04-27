// Global variables
RVector location = new RVector(100, 100);
RVector velocity = new RVector(1, 3.3);

// Runs once
void setup() {
  size(640, 360);
  background(255);
}

// Runs forever
void draw() {
  
  // Clear the background
  background(255);

  // Move the ball according to it's speed
  location.add(velocity);

  // Check for bouncing
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }

  // Visual characteristics of the ball
  stroke(0);
  fill(175);

  // Display the ball at the location (x, y)
  ellipse(location.x, location.y, 16, 16);
}