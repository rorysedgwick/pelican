float leftX = 175;
float rightX = 425;
float topY = 175;
float bottomY = 400;
float centre = 300;
float step = 8;


void setup() {
  size(600, 600);
  frameRate(60);
}


void draw() {
  background(75, 75, 75)
  strokeWeight(1);

  // top
  beginShape();
  fill(75, 75, 75);
  vertex(0, 0);
  vertex(leftX, topY);
  vertex(rightX, topY);
  vertex(600, 0);
  endShape(CLOSE);

  // left
  beginShape();
  fill(75, 75, 75);
  vertex(0, 0);
  vertex(leftX, topY);
  vertex(leftX, bottomY);
  vertex(0, 600);
  endShape(CLOSE);

  // right
  beginShape();
  fill(75, 75, 75);
  vertex(600, 0);
  vertex(rightX, topY);
  vertex(rightX, bottomY);
  vertex(600, 600);
  endShape(CLOSE);

  // bottom
  beginShape();
  fill(75, 75, 75);
  vertex(0, 600);
  vertex(leftX, bottomY);
  vertex(rightX, bottomY);
  vertex(600, 600);
  endShape(CLOSE);
}

void keyPressed() {
  switch (keyCode) {
    case 37: leftX -= step, rightX -= step;
    break;
    case 38: topY -= step, bottomY -= step;
    break;
    case 39: leftX += step, rightX += step;
    break;
    case 40: topY += step, bottomY += step;
    break;
    default: return false;
  }
}
