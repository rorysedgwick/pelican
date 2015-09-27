float topLeftX = 200;
float topLeftY = 200;
float topRightX = 400;
float topRightY = 200;
float botLeftX = 200;
float botLeftY = 400;
float botRightX = 400;
float botRightY = 400;
float centre = 300;


void setup() {
  size(600, 600);
  frameRate(60);
}


void draw() {
  background(0);
  strokeWeight(1);

  // top
  beginShape();
  fill(75, 75, 75);
  vertex(0, 0);
  vertex(topLeftX, topRightY);
  vertex(topRightX, topRightY);
  vertex(600, 0);
  endShape(CLOSE);

  // left
  beginShape();
  fill(75, 75, 75);
  vertex(0, 0);
  vertex(topLeftX, topRightY);
  vertex(botLeftX, botLeftY);
  vertex(0, 600);
  endShape(CLOSE);

  // right
  beginShape();
  fill(75, 75, 75);
  vertex(600, 0);
  vertex(topRightX, topRightY);
  vertex(botRightX, botRightY);
  vertex(600, 600);
  endShape(CLOSE);

  // bottom
  beginShape();
  fill(75, 75, 75);
  vertex(0, 600);
  vertex(botLeftX, botRightY);
  vertex(botRightX, botRightY);
  vertex(600, 600);
  endShape(CLOSE);
}
