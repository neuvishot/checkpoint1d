float r = 0;// global variable

void pattern2() {
  background(#278DF0);
  stroke(0, 0, 0);

  int cir = 0;
  int xc, yc;
  xc = yc = 0;
  while ( cir < 50) {
    circ(xc, 25 + yc);
    cir++;
    xc = xc + 105;
    if (xc > 630) {
      yc = yc + 100;
      xc = 0;
    }
  }

  //buttons
  fill(#FFF7F7);
  circTact(30, 570, 50);
  circle(30, 570, 50);
  circTact(570, 570, 50);
  circle(570, 570, 50);
}

void circ(float x, float y) {
  pushMatrix();
  translate(x, y);
  int spincount = 0;
  int e = 210;
  int c = 0;
      fill(255, 255, 255);
    circle(0, 0, 215);
  while (spincount < 10) {
    noStroke();
    fill(37, 200 - c, 232);
    circle(0, 0, e);
    spincount++;
    e = e - 30;
    c = c - 10;
  }
  popMatrix();
}

void clicks2() {
  if (dist(30, 570, mouseX, mouseY)<25) {
    mode = pattern1;
  } else if (dist(570, 570, mouseX, mouseY)<25) {
    mode = pattern3;
  }
}
