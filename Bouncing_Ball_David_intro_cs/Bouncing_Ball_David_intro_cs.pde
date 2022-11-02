int x = 0;
int y = 0;

int dx = 7;
int dy = 4;

void setup() {
  size(600,600);
}

void  draw() {
  background(100);
  circle (x, y,  50);
  x = x + dx;
  y = y + dy;
  
  
 if (x >= 600) { 
  dx = -dx;
}
if (x == 0) {
  //dx = dx + 3;
  dx = 7;
} 
if (y >= 600) {
  dy = -dy;
}
if (y == 0) {
  dy = 4;  
}  
}
