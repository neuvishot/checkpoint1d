void pattern3() {
  background(#96D629);

  //buttons
  fill(#FFF7F7);
  circTact(30, 570, 50);
  circle(30, 570, 50);
  circTact(570, 570, 50);
  circle(570, 570, 50);
}

void clicks3(){
   if (dist(30, 570, mouseX, mouseY)<25) {
   mode = pattern2;
  } else if (dist(570, 570, mouseX, mouseY)<25){
   mode = pattern1; 
  }
}
