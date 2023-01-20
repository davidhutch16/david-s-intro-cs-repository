int x = 20;
int y = 20;
int dx = 5;
int dy = 5;
boolean Blue = false;
boolean Red = false;
void setup() {
  size(500, 500);
}

void draw() {
  background(20, 20, 200);
  colorChange();
    circle(x, y, 40);
  // if the ball is at x = 20 and y = 20, go down
  if (x == 20 && y == 20) {
    dx = 0;
    dy = 5;
  }
  // if the ball is at x = 20 and y = 480, go right
  if (x == 20 && y == 480) {
    dx = 5;
    dy = 0;
  }
  // if ball at (480, 480), go up
  if (x == 480 && y == 480) {
    dx = 0;
    dy = -5;
  }
  // if ball at (), go right
  if (x == 480 && y == 20) {
    dx = -5;
    dy = 0;
  }
  x = x + dx;
  y = y + dy;
}

void colorChange() {
  if (Blue == true) {
    fill(60, 170, 255);
   
  }
  if(x == 480 && y == 480) {
    Blue = false;
    Red = true;
  } 
  if(Red == true) {
    fill(255, 100, 60);
  }
  if (x == 20 && y == 20) {
    Blue = true;
    Red = false;
  }
}
