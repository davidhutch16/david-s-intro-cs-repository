float xBuilding = 80;
void setup() {
  size(1100, 800);
  background(255, 140, 105);
}

void draw() {
  fill(255, 150, 105);
  circle(450, 200, 400);
  for(xBuilding = 80; xBuilding <= 1050; xBuilding += 30) {
    building(xBuilding,250);
  }
}


void building(float xLeft, float y )  {
  fill(100);
  strokeWeight(1);
  // antenna
  fill(245);
  rect(xLeft + 3, y, 10, 70);
  // building
  fill(100);
  rect(xLeft - 30, y + 50, 80, 525);
  // door
  fill(200);
  rect(xLeft - 10, y + 510, 50, 40);
  //windows
  fill(240);
  for(float yWindow = y + 50; yWindow <= y + 450; yWindow += 40) {
      rect(xLeft - 29, yWindow, 37, 37);
      rect(xLeft + 10, yWindow, 37, 37);
  }
}
