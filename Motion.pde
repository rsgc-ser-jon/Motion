// Create a space in memory for a Mover object
Mover mover;

// Runs once
void setup() {

  // Create a white background
  size(640, 360);
  background(255);

  // Actually make an instance of a Mover
  mover = new Mover();
}

// Runs forever
void draw() {

  // Clear the background
  background(255);

  // Make the mover move!
  mover.update();
  mover.checkEdges();
  mover.display();
}


// Respond to keypresses
void keyPressed() {

  if (key == CODED) {

    if (keyCode == UP) {
      println("up");
    } else if (keyCode == DOWN) {
      println("down");
    }
  }
}