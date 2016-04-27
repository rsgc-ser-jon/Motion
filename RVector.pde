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
  
}