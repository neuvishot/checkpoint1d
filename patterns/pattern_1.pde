void pattern1() {
  background(#F02727);
  int sq, sx, sy;
  int qx, qy;
  qx = qy = 0;
  sq = sx = sy = 0;

  // pattern
  while (sq < 170) {
    strokeWeight(.5);
     fill(#FFFFFF);
    square(sx, sy, 50);
    fill(#050000);
    stroke(#050000);
    quad(15+qx, 0+qy, 0+qx, 15+qy, -15+qx, 0+qy, 0+qx, -15+qy);
    qx = qx + 50;
    sx = sx + 50;
    sq ++;
    if (sx >= 600) {
      sy = sy + 50;
      sx =0;
    }
    if (qx >= 620){
     qx = 0;
     qy = qy + 50;
    }
  }



  //buttons
  fill(#FFF7F7);
  circTact(60, 300, 100);
  circle(60, 300, 100);
  circTact(540, 300, 100);
  circle(540, 300, 100);
}

void clicks1() {
  if (dist(60, 300, mouseX, mouseY)<50) {
    mode = pattern3;
  } else if (dist(540, 300, mouseX, mouseY)<50) {
    mode = pattern2;
  }
}
