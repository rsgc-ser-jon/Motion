// Create a space in memory for many Mover objects
Bouncer ball[] = new Bouncer[1];
Brick brick1 = new Brick();

// Runs once
void setup() {

  // Create a white background
  size(640, 360);
  background(255);



  // Actually make an instance of a Mover
  for (int i = 0; i < ball.length; i+=1) {
    ball[i] = new Bouncer();
    
    
    
  }

  }
  

// Runs forever
void draw() {

  // Clear the background
  background(255);

  // Make the mover move!
  for (int i = 0; i < ball.length; i+=1) {
    ball[i].update();
    ball[i].checkEdges();
    ball[i].display();
  }
}