void pattern3() {
  background(#96D629);

  //buttons
  circTact(60, 300, 100);
  circle(60, 300, 100);
  circTact(540, 300, 100);
  circle(540, 300, 100);
}

void clicks3(){
   if (dist(60, 300, mouseX, mouseY)<50) {
   mode = pattern2;
  } else if (dist(540, 300, mouseX, mouseY)<50){
   mode = pattern1; 
  }
}
