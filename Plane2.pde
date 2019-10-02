class Plane2 {
  PImage img;
  public float posX, posY;
  float sizeX, sizeY, speed;
  boolean up = false;
  boolean down = false;

  Plane2() {
    posX = width/8 + 20;
    posY = height/8*6;
    sizeX = 100;
    sizeY = 100;
    speed = 5;
    img = loadImage("plane2.png");
  }// setup

  void display() {
    image(img, posX, posY, sizeX, sizeY);
    if (posY < 0 - sizeY/2) {
      posY = posY + speed;
    } //if
    if (posY > height - sizeY/2) {
      posY = posY - speed;
    } //if
    // move linker balk
    if (up) {
      posY -= speed;
    } //if
    if (down) {
      posY += speed;
    } //if
  }// draw

  void keyPressed() {
    if (key == 'p') {
      up = true;
    } //if
    else if (key == 'l') {
      down = true;
    }// else if
  }// keyPressed

  void keyReleased() {
    //linker stop
    if (key == 'p') {
      up = false;
    } //if
    else if (key == 'l') {
      down = false;
    } //else if
  }// keyReleased
} // class plane1
