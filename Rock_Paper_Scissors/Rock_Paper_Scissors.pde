String userChoice = "Not Chosen";
int rand; 
String computerChoice = "Not Chosen";
void setup() {
  size(700,700);
  textSize(30);
}
void draw() {
  background (150);
  
  fill(255);
  if (userChoice == "Rock") {
    fill(50, 170,200);
  }
  
  rect(width / 3 - 50, 100, 100, 50);
  fill(255);
  
    if (userChoice == "Paper") {
    fill(255, 170,200);
    }  
    
    rect(width / 3 + 100, 100, 100, 50);
    fill(255);
    
        if (userChoice == "Scissors") {
    fill(150, 255,75);
        }
   
      rect(width / 3 + 250, 100, 100, 50);
      fill(0);
      
      text("Rock", width / 3 - 50, 140);
      text("Paper", width / 3 + 100, 140);
      text("Scissors", width / 3 + 250, 140);
      println(userChoice);
     fill(255);
     textSize(20);
 rect(width / 3 + 75, 400, 100, 50);
 
 fill(0);
text("Computer:", 310, 400);
text(computerChoice, 310, 450);
                   
   if (rand == 0) {
computerChoice = "Rock";
  } else if (rand == 1) {
    computerChoice = "Paper";
  } else if (rand == 2) {
    computerChoice = "Scissors";
}

if (userChoice == "Paper" &&
computerChoice == "Scissors") {
  text("YOU LOSE", 310, 350);
}

if (userChoice == "Paper" &&
computerChoice == "Rock") {
  text("YOU WIN", 310, 350);
}

if (userChoice == "Paper" &&
computerChoice == "Paper") {
  text("YOU TIE", 310, 350);
}

if (userChoice == "Rock" &&
computerChoice == "Paper") {
  text("YOU LOSE", 310, 350);
}

if (userChoice == "Rock" &&
computerChoice == "Scissors") {
  text("YOU WIN", 310, 350);
}

if (userChoice == "Rock" &&
computerChoice == "Rock") {
  text("YOU TIE", 310, 350);
}

if (userChoice == "Scissors" &&
computerChoice == "Rock") {
  text("YOU LOSE", 310, 350);
}

if (userChoice == "Scissors" &&
computerChoice == "Paper") {
  text("YOU WIN", 310, 350);
}

if (userChoice == "Scissors" &&
computerChoice == "Scissors") {
  text("YOU TIE", 310, 350);
}
}
void mousePressed() {

  if (mouseX > width / 3 - 50 &&
  mouseX < width / 3 + 50 && 
  mouseY > 100 && mouseY < 150) {
  userChoice = "Rock";
  rand = (int) random(3);
  }

 if (mouseX > width / 3 + 100 &&
  mouseX < width / 3 + 200 && 
  mouseY > 100 && mouseY < 150) { 
    userChoice = "Paper";
rand = (int) random(3);
  }
  
 if (mouseX > width / 3 + 250 &&
  mouseX < width / 3 + 350 && 
  mouseY > 100 && mouseY < 150) { 
    userChoice = "Scissors";
  rand = (int) random(3);
}
}
