boolean startPage=true;
PFont cute;
//cute=createFont("Purisa-48.vlw", 128);

void setup() {
  //cute=createFont("Purisa-Oblique-80.vlw",80);
  size(800, 800);
  if (startPage) {
    background(255);
    fill(0);
    rect(width/2 - 100, height/2 + 100, 200,100,20);
    fill(255);
    textSize(80);
    //textFont(cute);
    text("Play", width/2 -75, height/2 +175);
  }
}
