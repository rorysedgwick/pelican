float incr = 100;
float decr = 300;
float hundred;
float three;
float spins = 0;

color green = color(70, 210, 70);

void setup() {
  size(400, 400);
  frameRate(60);
  hundred = height/4;
  three = (height/4) * 3;
}

void draw() {
  background(0);
  stroke(green);
  strokeWeight(3);

  incr = incr + 1;
  if (incr > 300) {
     incr = 100;
     spins += 1;
  }
  decr = decr - 1;
  if (decr < 100) {
    decr = 300;
  }

  line(incr, hundred, three, incr); // line 1

  line(three, incr, decr, three); // line 2

  line(decr, three, hundred, decr); // line 3

  line(hundred, decr, incr, hundred); // line 4

  point(incr, incr);
  point(incr, decr);
  point(decr, incr);
  point(decr, decr);
  point(width/2, decr);
  point(width/2, incr);
  point(incr, height/2);
  point(decr, height/2);

  line(decr, hundred, incr, three);
  line(hundred, incr, three, decr);
  line(incr, three, decr, hundred);
  line(three, decr, hundred, incr);
  text("spins: " + spins, 320, 380);
  fill(green);
}
