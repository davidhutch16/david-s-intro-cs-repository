void setup () {
 size(600);
}

void draw() {
  
  if (YourBirthdayIsInJuly) {
    standUp();
  } else if(bithdateIsBeforeNovember2007) {
    pointToTheFloor();
  } else { 
    WalkToTheFrontOfTheRoom();
  }
}
