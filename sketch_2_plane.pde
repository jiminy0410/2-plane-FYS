Plane1 plane1;
Plane2 plane2;
Stars stars;

void setup() {
  size(1500, 800);
  plane1 = new Plane1();
  plane2 = new Plane2();
  stars = new Stars();
} // setup

void draw() {
  stars.display();
  plane1.display();
  plane2.display();
} // draw

void keyPressed() {
  plane1.keyPressed();
  plane2.keyPressed();
} // pressd

void keyReleased() { 
  plane1.keyReleased();
  plane2.keyReleased();
} //released 
