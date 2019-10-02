class Plane1 {
  PImage img;
  public float posX, posY;
  float sizeX, sizeY, speed;
  boolean up = false;
  boolean down = false;

  Plane1() {
    posX = width/8;
    posY = height/8;
    sizeX = 100;
    sizeY = 100;
    speed = 5;
    img = loadImage("plane1.png");
  }// setup

  void display() {
    image(img, posX, posY, sizeX, sizeY);
    // move linker balk
    if (posY < 0 - sizeY/2) {
      posY = posY + speed;
    } //if
    if (posY > height - sizeY/2) {
      posY = posY - speed;
    } //if
    if (up) {
      posY -= speed;
    } //if
    if (down) {
      posY += speed;
    } //if
  }// draw

  void keyPressed() {
    if (key == 'q') {
      up = true;
    } //if
    else if (key == 'a') {
      down = true;
    }// else if
  }// keyPressed

  void keyReleased() {
    //linker stop
    if (key == 'q') {
      up = false;
    } //if
    else if (key == 'a') {
      down = false;
    } //else if
  }// keyReleased
} // class plane1
