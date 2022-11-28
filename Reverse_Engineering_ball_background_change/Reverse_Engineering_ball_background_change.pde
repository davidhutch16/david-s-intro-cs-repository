int x = 0;
int y = 0;

int dx = 7;
int dy = 4;
int r = 200;
int g = 172;
int b = 200;

void setup() {
  size(600,600);
}

void  draw() {
  background(r,g,b);
  circle (x, y,  50);
  x = x + dx;
  y = y + dy;
  
  
 if (x >= 600) { 
  dx = -dx;
}
if(x >= 600) {
 r = 0;
 g = 0;
 b = 0;
}
if (x == 0) {
  //dx = dx + 3;
  dx = 7;
} 
if (x ==0) {
  r = 50;
  g = 200;
  b = 50;
}
if (y >= 600) {
  dy = -dy;
}
if (y >= 600) {
  r = 50;
  g = 150;
  b = 255;
}
if (y == 0) {
  dy = 4;  
}  
if (y == 0) {
  r = 100;
  g = 255;
  b = 255;
}
}
