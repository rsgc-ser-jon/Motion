// Global variables 
float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 3.3;

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
  x = x + xspeed;
  y = y + yspeed;

  // Check for bouncing
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }

  // Visual characteristics of the ball
  stroke(0);
  fill(175);

  // Display the ball at the location (x, y)
  ellipse(x, y, 16, 16);
}