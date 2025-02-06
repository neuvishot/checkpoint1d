void pattern1() {
  background(#F02727);
  int sq, sx, sy;
  int qx, qy;
  qx = qy = 0;
  sq = sx = sy  = 0;

  // pattern
  while (sq < 170) {
    strokeWeight(.5);
    fill(#FFFFFF);
    square(sx, sy, 50);
    float m = dist(mouseX, mouseY, qx, qy);
    // m is the value thats being measured in the scale of 0 to width/2
    // and is being coverted to the range of 0, 255 to affect transparency
    float transparency = map(m, 0, width/2, 255, 0);
    float size = map(m, 0, width/2, 20, 5);
    stroke(0, 0, 0);
    fill(#ABD5E8);
    quad(size+qx, 0+qy, 0+qx, size+qy, -size+qx, 0+qy, 0+qx, -size+qy);
    fill(0, 0, transparency/2, transparency);
    //quad(15+qx, 0+qy, 0+qx, 15+qy, -15+qx, 0+qy, 0+qx, -15+qy);
    quad(size+qx, 0+qy, 0+qx, size+qy, -size+qx, 0+qy, 0+qx, -size+qy);
    qx = qx + 50;
    sx = sx + 50;
    sq ++;
    if (sx >= 600) {
      sy = sy + 50;
      sx =0;
    }
    if (qx >= 620) {
      qx = 0;
      qy = qy + 50;
    }
  }

  //buttons
  fill(#FFF7F7);
  circTact(30, 570, 50);
  circle(30, 570, 50);
  circTact(570, 570, 50);
  circle(570, 570, 50);
}

void clicks1() {
  if (dist(30, 570, mouseX, mouseY)<25) {
    mode = pattern3;
  } else if (dist(570, 570, mouseX, mouseY)<25) {
    mode = pattern2;
  }
}
