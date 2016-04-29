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
    
    div(m);  // normalize this vector instance using the magnitude
    
  }
  
}