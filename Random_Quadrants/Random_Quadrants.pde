float x;
float y;
float b;
float r;
float g;
float shape;
void setup() {
  size(600,600);
  //frameRate(1);
}

void draw() {
  x = random(0,width);
  y = random(0,height);
  shape = (int) random(010);
  println("shape is " + shape);
  if(x <= 300 && y >= 300) {
    r = 230;
    g = 9;
    b = 9;
  }
  if( x >= 300 && y >=300) {
    r = 9;
    g = 123;
    b = 230;
  }
  if (x >= 300 && y <=300) { 
    r = 20;
    g = 255;
    b = 50;
  }
  if (x <= 300 && y <= 300) {
    r = 255;
    g = 255;
    b = 20;
  }
  fill(r,g,b);
  if (shape == 0) { 
    
  circle(x,y,20);
  } else if (shape == 1) {
    rect(x, y, 20, 20);
  }
  //if(x >= -300) {
  //  r = 255;
  //  g = 191;
  //  b = 0;
  //}
  // if(y >= -300) {
  //  r = 255;
  //  g = 191;
  //  b  = 0;
  //}
  
//    if(x >= 300) {
//    r = 9;
//    g = 123;
//    b = 230;
//  }
//   if(y <= 300) {
//    r = 9;
//    g = 123;
//    b  = 230;
//   }
  

}
