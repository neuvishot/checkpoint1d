float r = 0;// global variable

void pattern2() {
  background(#278DF0);
  stroke(0, 0, 0);
  int spincount = 0;


  //while(spincount < 5){
  //circ(300, 300, r);
  //r =  r + 1;
  //spincount++;
  //}

  // center point
  circle(300, 300, 50);

  //int sc, ss;
  //sc = 0;
  //ss = ;

  //while (sc < 10){
  //  stroke(0,0,0);
  // circle(300, 300, ss);
  // sc ++;
  // ss = ss - 50;
  //}

  //buttons
  fill(#FFF7F7);
  circTact(30, 570, 50);
  circle(30, 570, 50);
  circTact(570, 570, 50);
  circle(570, 570, 50);
}

void circ(float x, float y, float r) {
  pushMatrix();
  translate(x, y);
  rotate(radians(r));
  circle(120, 0, 240);
  popMatrix();
}

void clicks2() {
  if (dist(30, 570, mouseX, mouseY)<25) {
    mode = pattern1;
  } else if (dist(570, 570, mouseX, mouseY)<25) {
    mode = pattern3;
  }
}
