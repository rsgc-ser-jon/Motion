class RVector {
  
  // Data
  float x;
  float y;
  
  // Constructor
  RVector(float x_, float y_) {
    
    x = x_;
    y = y_;
    
  }
  
  void add(RVector v) {
    x = x + v.x;
    y = y + v.y;
  }
  
  void sub(RVector v) {
    x = x - v.x;
    y = y - v.y;
  }
  
  // scale the vector with multiplication
  void mult(float n) {
    x = x * n;
    y = y * n;
  }
  
  // scale the vector with division
  void div(float n) {
    x = x / n;
    y = y / n;
  }
  
  // vector magnitude – how long is the vector?
  float mag() {
    return sqrt(x*x + y*y);
  }
  
  // vector normalization – make the vector a unit vector
  void normalize() {
    
    float m = mag();  // get magnitude
    
    // Make sure we don't divide by zero
    if (m != 0) {
      div(m);  // normalize this vector instance using the magnitude
    }
    
  }
  
  // limit the magnitude of this vector
  void limit(float max) {
    if (mag() > max) {
      normalize();
      mult(max);
    }
  }
  
  // Return a 2D RVector with a max magnitude of 1 pointing in a random direction
  RVector random2D() {
    
    return new RVector( random(-1, 1), random(-1, 1) );
    
  }
  
}