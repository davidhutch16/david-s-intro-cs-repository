int x = 0;
int y = 0;

int dx = 7;
int dy = 4;
int r = 200;
int g = 172;
int b = 200;

int f = 70;
int s = 130;
int t = 255;

void setup() {
  size(600,600);
}

void  draw() {
  background(180);
  fill(r,g,b);
  noStroke();
  circle (x, y,  50);
  stroke(255);
  fill(f,s,t);
  circle (x, y,  20);
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
if(x >= 600) {
 f = 150;
 s = 200;
 t = 100;
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
if(x == 0) {
 f = 0;
 s = 0;
 t = 0;
}
if (y >= 600) {
  dy = -dy;
}
if (y >= 600) {
  r = 50;
  g = 150;
  b = 255;
}
if(y >= 600) {
 f = 255;
 s = 50;
 t = 100;
}
if (y == 0) {
  dy = 4;  
}  
if (y == 0) {
  r = 100;
  g = 255;
  b = 255;
}
if(y == 0) {
 f = 255;
 s = 200;
 t = 50;
}
}
