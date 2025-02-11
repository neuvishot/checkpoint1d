
void pattern3() {
  int rq = 0;
  int x, y;
  x = y = 0;
  stroke(0,0,0);
  noStroke();
  
  background(#AAF7EE);


  //background row
  while (rq< 45) {
    fill(#96D629);
    squares(x, y);
    x = x + 121;
    if (x >620) {
      y = y + 121;
      x = 0;
    }
    rq++;
  }

  float other, xx, yy;
  other = 0;
  xx = 120;
  yy = 0;


  //front row
  while (other < 80) {
    pushMatrix();
    fill(255, 255, 3, 150);
    scale(.5);
    squares(xx, yy);
    other++;
    popMatrix();
    xx = xx + 242;
    if (xx > 1332) {
      yy = yy + 242;
      xx = 120;
    }
  }


  //buttons
  fill(#FFF7F7);
  circTact(30, 570, 50);
  circle(30, 570, 50);
  circTact(570, 570, 50);
  circle(570, 570, 50);
}

void squares(float x, float y) {
  pushMatrix();
  translate(x, y);
  rotate(radians(45));
  rect(-43, -43, 86, 86);
  popMatrix();
}


void clicks3() {
  if (dist(30, 570, mouseX, mouseY)<25) {
    mode = pattern2;
  } else if (dist(570, 570, mouseX, mouseY)<25) {
    mode = pattern1;
  }
}
