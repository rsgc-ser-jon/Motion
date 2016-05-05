class Brick {
  
  RVector location;

  // constructor
  Brick() {
    
 location = new RVector( random(width), random(height) );
    
  }
  
  // update position
  void update() {
    // Move the ball according to it's speed
  }
  
  // show the object
  void display() {
    // Visual characteristics of the ball
    stroke(0);
    fill(175);
  
    // Display the ball at the location (x, y)
    rect(location.x, location.y, 30, 16);
  }
  
  // check for edges
  void checkEdges() {
    
    
  }
}