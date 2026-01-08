boolean startPage=true;
//PFont cute;
//cute=createFont("Purisa-48.vlw", 128);
int score;
int highscore;
int lives = 3;
int EASY = 0;
int MED = 1;
int HARD = 2;
boolean chooseMode = false;
boolean playStart = false;
boolean endPage = false;
int mode;

void setup() {
  //cute=createFont("Purisa-Oblique-80.vlw",80);
  size(800, 800);
}

void draw() {
  if (startPage) {
    background(255);
    fill(0);
    rect(width/2 - 100, height/2 + 100, 200, 100, 20); //PLAY BUTTON
    fill(255);
    textSize(80);
    //textFont(cute);
    text("Play", width/2 -75, height/2 +175);
    fill(0);
    textSize(100);
    text("Memory Game", width/2-295, height - 500);
  }
  if (!startPage && !playStart) {
    chooseMode=true;
  }
  if (chooseMode) {
    background(255);
    modeButtons();
  }
}

void mousePressed() {
  //println("works");
  if (startPage) {
    if (mouseX >= width/2 - 100 && mouseX <= width/2 + 100 && mouseY>=height/2 +95 && mouseY <= height/2+195) {
      //println("works");
      startPage=!startPage;
      //println(startPage);
    }
  }
  if (chooseMode) {
   if(mouseX >= width/2 - 350 && mouseX<= width/2 -150 && mouseY >= height/2 -60 && mouseY <= height/2 + 40) {
     //println("works");
     mode = EASY;
  }
  if(mouseX >= width/2 - 100 && mouseX<= width/2 + 100 && mouseY >= height/2 -60 && mouseY <= height/2 + 40) {
     //println("works");
     mode = MED;
  }
  if(mouseX >= width/2 + 150 && mouseX<= width/2 + 350 && mouseY >= height/2 -60 && mouseY <= height/2 + 40) {
     //println("works");
     mode = HARD;
  }
  }
}

void modeButtons() {
  noStroke();
  fill(0, 200, 100);
  rect(width/2 - 350, height/2 - 60, 200, 100, 20); //EASY BUTTON
  fill(255, 149, 0);
  rect(width/2 - 100, height/2 - 60, 200, 100, 20); //MED BUTTON
  fill(100, 10, 10);
  rect(width/2 + 150, height/2 - 60, 200, 100, 20); //HARD BUTTON
  fill(0);
  textSize(80);
  text("EASY", width/2 - 330, height/2 + 15);
  text("MED", width/2 - 70, height/2 + 15);
  text("HARD", width/2 + 160, height/2 + 15);
}
