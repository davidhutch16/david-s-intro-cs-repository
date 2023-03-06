float xBuilding = 80;
float yBuilding = 525;
float h;
void setup() {
  size(1100, 800);
  background(255, 140, 105);
  fill(255, 150, 105);
  circle(450, 200, 400);
  for (xBuilding = 80; xBuilding <= 1050; xBuilding += 30) {
    building(xBuilding, 800, random(300, 600));
  }
}

void draw() {



  //for (yBuilding = 525; yBuilding == 700; yBuilding = yBuilding +- 50) {
  //building(xBuilding, yBuilding);
}


void building(float xLeft, float yBottom, float h) {
  float y = yBottom - h;
  // original height is 525
  fill(100);
  strokeWeight(1);
  // antenna
  fill(245);
  rect(xLeft + 3, y, 10, 70);
  // building
  fill(100);
  rect(xLeft - 30, y + 50, 80, h);
  // door
  fill(200);
  rect(xLeft - 10, yBottom - 40, 50, 40);
  //windows
  fill(240);
  for (float yWindow = y + 50; yWindow <= y + h - 75; yWindow += 40) {
    rect(xLeft - 29, yWindow, 37, 37);
    rect(xLeft + 10, yWindow, 37, 37);
  }
}
