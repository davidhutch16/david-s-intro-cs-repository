PImage snake;
float snakeX = 100;
float snakeY = 100;
float foodX = random(10, 990);
float foodY = random(10, 840);
float foodSize = random(20, 50);
boolean eat = false;
int sizeW = 175;
int sizeH = 60;
void setup() {
  size(1000, 850);
  background(0);
  snake = loadImage("Snake.png");
  
}
void draw() {
  background(40);
  snake.resize(sizeW, sizeH);
  fill(245);
  circle(foodX, foodY, foodSize);
  image(snake, snakeX, snakeY);
  fill(35);
  println(foodX + "," + foodY);

  if (snakeY >= foodY - foodSize  && snakeY <= foodY + foodSize  &&
    snakeX + sizeW >= foodX - foodSize  && snakeX + sizeW <= foodX + foodSize) {
    eat = true;
  } else {
    eat = false;
  }
  if (eat == true) {
    sizeW = sizeW + 45;
    sizeH = sizeH + 10;
   foodX = random(10, 990);
   foodY = random(10, 840);
  foodSize = random(20, 50);
  }
}




//void polygon(float x, float y, float radius, int npoints) {
//  float angle = TWO_PI / npoints;
//  beginShape();
//  for (float a = 0; a < TWO_PI; a += angle) {
//    float sx = x + cos(a) * radius;
//    float sy = y + sin(a) * radius;
//    vertex(sx, sy);

//    for (y = 50; y <= 950; y += 500) {
//    }
//    endShape(CLOSE);
//  }

void keyPressed() {
  println(snakeX + "," + snakeY);
  if (keyCode == UP) {
    snakeY = snakeY - 20;
  }
  if (keyCode == DOWN) {
    snakeY = snakeY + 20;
  }
  if (keyCode == LEFT) {
    snakeX = snakeX - 20;
  }
  if (keyCode == RIGHT) {
    snakeX = snakeX + 20;
  }
}
