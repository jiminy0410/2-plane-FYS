class Stars {
  float[] X = new float[width] ;
  float[] Y = new float[height];
  float[] Number = new float[200];
  float size = 5;
  float speed = 5;

  Stars() {
    for (int i = 0; i < Number.length; i++) {
      X[i] = random(width);
      Y[i] = random(height);
    } // for
  } //stars
  void display() {
    background(0);
    for (int i = 0; i < Number.length; i++) {
      fill(255);
      circle(X[i], Y[i], size);
      X[i] = X[i] - speed;
      if (X[i]<0) {
        X[i] = X[i] + width;
      }//if
    } // for
  }// display
}// class
