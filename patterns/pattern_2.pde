void pattern2(){
  background(#278DF0);
  
    //buttons
  circTact(60, 300, 100);
  circle(60, 300, 100);
  circTact(540, 300, 100);
  circle(540, 300, 100);
}

void clicks2(){
   if (dist(60, 300, mouseX, mouseY)<50) {
   mode = pattern1;
  } else if (dist(540, 300, mouseX, mouseY)<50){
   mode = pattern3; 
  }
}
