// checkpoint 1d
// feb 4, 2025

// MODE FRAMEWORK
int mode;
final int pattern1 = 0;
final int pattern2 = 1;
final int pattern3 = 2;


void setup() {
  size (600, 600);
  mode = pattern1;
}

void draw() {
  if (mode == pattern1){
   pattern1(); 
  } else if (mode == pattern2){
   pattern2(); 
  } else if (mode == pattern3){
   pattern3(); 
  }
}
