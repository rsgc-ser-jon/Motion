class Brick {
  
  RVector location;
  RVector velocity;

  // constructor
  Brick() {
    
    location = new RVector(400, 200);
    
  }
  
  // update position
  void update() {
    // Move the ball according to it's speed
    location.add(velocity);
  }
  
  // show the object
  void display() {
    // Visual characteristics of the ball
    stroke(0);
    fill(175);
  
    // Display the ball at the location (x, y)
    rect(location.x, location.y, 16, 16);
  }
    
  }
}