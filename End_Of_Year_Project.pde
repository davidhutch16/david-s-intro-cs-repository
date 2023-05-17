PImage player;
PImage redflag;
PImage blueflag;
PImage finishline;
float playerX = 425;
int sizeW = 25;
int sizeH = 30;
float playerY = 200;
boolean gameStart = false;
boolean collision = false;
boolean level1 = false;
boolean level1Completed = false;
boolean level2 = false;
boolean level2Completed = false;
boolean level3 = false;
boolean level3Completed = false;
boolean RULES = true;
float[] yPos = {50, 90, 60, 70, 10, 30, 80, 115, 135, 45, 155};
float fallRate = random(20,30);
int snowX; 
float time = 5.600;
String level = "1";

// the player
void setup() {
  size(800, 800);
  player = loadImage("Player.png");
  textSize(50);
  frameRate(60);
}
//controls and beginning the game
void keyPressed() {
  if (keyCode == ENTER) {
    level1 = true;
    RULES = false;
  }
  if (key == ' ' && RULES == false) {
    gameStart = true;
  }
  if (gameStart == true) {
    if (keyCode == LEFT) {
      playerX = playerX - 25;
    } else if (keyCode == RIGHT) {
      playerX += 25;
    }
  }
}
// just to make it look more like skiing
void keyReleased() {
  if (keyCode == ENTER) {
    level1 = true;
    RULES = false;
  }
  if (keyCode == 32) {
    gameStart = true;
  }
  if (gameStart == true) {
    if (keyCode == LEFT) {
      playerX = playerX - 25;
    } else if (keyCode == RIGHT) {
      playerX += 25;
    }
  }
}
void draw() {
  background(200);
  stroke(250);
  fill(230);
  rect(175, 200, 450, 900);
  stroke(0);
  line(175, 750, 625, 750);
  player.resize(sizeW, sizeH);
  image(player, playerX, playerY);
  for (snowX = 1; snowX <= 10; snowX += 1) {
    noStroke();
    fill(255);

    circle(snowX * 100, yPos[snowX-1], 5);

    yPos[snowX-1] = yPos[snowX-1] + fallRate;
    if (yPos[snowX - 1] >= 790) {
      yPos[snowX-1] = 0;
    }
  }
  text(time, 375, 60);
  if (gameStart == true) {
    playerY += 2.5;
    time -= .01;
  } else if (gameStart == false) {
    fill(255);
    text("CLick Space to Start", 325, 100);
    text("Level:", 375, 120);
    text(level, 395, 140);
    playerY = 200;
    playerX = 435;
    yPos[snowX-1] = 10;
    time = 5.000;
  }
  if (RULES == true) {
    fill(255);
    rect(0, 0, 800, 800);
    fill(0);
    text("RULES", 350, 350);
    text("The point of the game is to get past the black line at the bottom before the time runs out.", 50, 400);
    text("You have to dodge the right of the blue flags and the left of the red flags on your way to the bottom.", 10, 450);
    text("Use The LEFT and RIGHT arrow keys to control Left and Right.", 175, 500);
    text( "Press ENTER to go to the Game.", 250, 550);
    textSize(19);
  } else {
    RULES = false;
  }

  if (level1 == true && playerY >= 750
    && time >= 0) {
    level1Completed = true;
  }
  if (level1Completed == true) {
    gameStart = false;
    level2 = true;
  }

  if (level2 == true) {
    level2setup();
    level2();
    level1 = false;
    level3 = false;
    level1Completed = false;
    if (level2 == true && gameStart == true) {
      time -= .01;
    }
  }
  if (level1 == true) {
    level1setup();
    level1();
  }
  if (level2 == true && playerY >= 750 && time >= 0) {
    level2Completed = true;
  }

  if (level2Completed == true) {
    level2 = false;
    gameStart = false;
    level3 = true;
  }
  if (level3 == true) {
    level3setup();
    level3();
    level2Completed = false;
    if (level3 == true && gameStart == true) {
      time -=.01;
    }
  }
  if (playerY >= 770) {
    gameStart = false;
  }

  if (playerX <= 175 || playerX >= 600) {
    gameStart = false;
  }

  if (collision == true) {
    gameStart = false;
  }

  if (level2 == true && playerY >= 750 && time >= 0) {
    level3 = true;
  } else {
    level2 = false;
  }
  if (level3 == true) {
    level3();
  }
}
void level1setup() {
  blueflag = loadImage("BlueFlag.png");
  blueflag.resize(sizeW, sizeH);
  image(blueflag, 430, 300);
  redflag = loadImage("RedFlag.png");
  redflag.resize(sizeW, sizeH);
  image(redflag, 420, 450);

  blueflag = loadImage("BlueFlag.png");
  blueflag.resize(sizeW, sizeH);
  image(blueflag, 400, 600);
  finishline = loadImage("FinishLine.png");
  finishline.resize(sizeW, sizeH);
  image(finishline, 200, 725);

  finishline = loadImage("FinishLine.png");
  finishline.resize(sizeW, sizeH);
  image(finishline, 200, 725);
}
void level1 () {
  if (playerX <= 424 && playerY == 300) {

    gameStart = false;
  }
  if (playerX >= 424 && playerY == 450) {
    gameStart = false;
  }
  if (playerX <= 400 && playerY == 600) {

    gameStart = false;
  }
}
void level2setup () {
  blueflag = loadImage("BlueFlag.png");
  blueflag.resize(sizeW, sizeH);
  image(blueflag, 430, 300);

  redflag = loadImage("RedFlag.png");
  redflag.resize(sizeW, sizeH);
  image(redflag, 410, 450);

  blueflag = loadImage("BlueFlag.png");
  blueflag.resize(sizeW, sizeH);
  image(blueflag, 460, 575);

  redflag = loadImage("RedFlag.png");
  redflag.resize(sizeW, sizeH);
  image(redflag, 420, 700);

  level = "2";
}
void level2 () {
  if (playerX <= 430 && playerY == 300) {

    gameStart = false;
  } else if (playerX == 430 && playerY == 300) {
    fallRate += 10;
  }
  if (playerX >= 424 && playerY == 450) {
    gameStart = false;
  } else if (playerX == 424 && playerY == 450) {
    fallRate += 10;
  }
  if (playerX <= 460 && playerY == 600) {

    gameStart = false;
  } else if (playerX == 460 && playerY == 600) {
  }
    if (playerX >= 420 && playerY == 700) {
      gameStart = false;
    }

    if (playerX == 420 && playerY == 700) {
      fallRate += 10;
    }
  }

  void level3setup() {
    blueflag = loadImage("BlueFlag.png");
    blueflag.resize(sizeW, sizeH);
    image(blueflag, 430, 300);

    redflag = loadImage("RedFlag.png");
    redflag.resize(sizeW, sizeH);
    image(redflag, 400, 375);

    blueflag = loadImage("BlueFlag.png");
    blueflag.resize(sizeW, sizeH);
    image(blueflag, 460, 450);

    redflag = loadImage("RedFlag.png");
    redflag.resize(sizeW, sizeH);
    image(redflag, 390, 525);

    blueflag = loadImage("BlueFlag.png");
    blueflag.resize(sizeW, sizeH);
    image(blueflag, 480, 600);
    finishline = loadImage("FinishLine.png");
    finishline.resize(sizeW, sizeH);
    image(finishline, 200, 725);
    level = "3";
  }
  void level3 () {


    if (playerX <= 430 && playerY == 300) {

      gameStart = false;
    }
    if (playerX >= 400 && playerY == 375) {
      gameStart = false;
    }
    if (playerX <= 460 && playerY == 450) {

      gameStart = false;
    }
    if (playerX >= 390 && playerY == 525) {
      gameStart = false;
    }
    if (playerX <= 480 && playerY == 600) {
      gameStart = false;
    }
  }
