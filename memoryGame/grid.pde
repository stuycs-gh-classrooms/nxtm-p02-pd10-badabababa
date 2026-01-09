class Grid {
  int x;
  PVector[][] coordinates; // stores x, y for each rectangle
  //int a;
  //int c;
  color[][] colors;
  Grid(int mode) {
    x = mode;
    if (x == EASY) {
      i = 2;
      size = 200;
    }
    if (x == MED) {
      i = 3;
      size = 100;
    }
    if (x == HARD) {
      i = 4;
      size = 70;
    }
    colors = new color[i][i];
    for (int row = 0; row < i; row++) {
      for (int col = 0; col < i; col++) {
        colors[row][col] = color(int(random(100, 255)), int(random(100, 255)), int(random(100, 255)));
      }
    }
    coordinates = new PVector[i][i];
  }
  void display() {
    playingField(mode);
  }
  void playingField(int mode) {
    for (int row = 0; row < i; row++) {
      for (int col = 0; col < i; col++) {
        //stroke(0);
        //int a = int(random(100, 255));
        //int c = int(random(100, 255));
        fill(colors[row][col]);
        rect(width/2 - 350 + col * (size + 50), 100 + row * (size + 50), size, size, 20);
        coordinates[row][col] = new PVector(width/2 - 350 + col * (size + 50), 100 + row * (size + 50)); // store top-left corner
        //println(coordinates[row][col]);
      }
    }
  }
}
