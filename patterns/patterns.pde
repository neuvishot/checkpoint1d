// checkpoint 1d
// feb 4, 2025

// MODE FRAMEWORK
int mode;
final int pattern1 = 0;
final int pattern2 = 1;
final int pattern3 = 2;


void setup() {
  size (600, 600);
  mode = pattern2;
}

void draw() {
  // framework
  println(mouseX, mouseY);
  if (mode == pattern1) {
    pattern1();
  } else if (mode == pattern2) {
    pattern2();
  } else if (mode == pattern3) {
    pattern3();
  }
}

void mousePressed() {
  if (mode == pattern1) {
    clicks1();
  } else if (mode == pattern2) {
    clicks2();
  } else if (mode == pattern3) {
    clicks3();
  }
}

void circTact(float x, float y, float w) {
  if (dist(x, y, mouseX, mouseY) < w/2) {
    strokeWeight(2);
    stroke(#FFFFFF);
  } else {
    strokeWeight(2);
    stroke(#050000);
  }
}
