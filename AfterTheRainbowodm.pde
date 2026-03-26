import java.util.Collections;

ArrayList<Rainbow> rainbow = new ArrayList<Rainbow>();

float circleNumber;

boolean topSimiCircles = false;
boolean bottomSimiCircles = false;

boolean filled = false;

SimiCircles circleTop;
SimiCircles circleBottom;

void setup() {
  size(600, 610);
  smooth(8);
  strokeWeight(3);
  background(255);

  rainbow.add(new Rainbow(color(239, 51, 64)));
  rainbow.add(new Rainbow(color(254, 80, 0)));
  rainbow.add(new Rainbow(color(252, 227, 0)));
  rainbow.add(new Rainbow(color(0, 191, 111)));
  rainbow.add(new Rainbow(color(0, 161, 224)));
  rainbow.add(new Rainbow(color(104, 91, 199)));

  circleTop = new SimiCircles(circleNumber, filled);
  circleBottom = new SimiCircles(circleNumber, filled);
}

void draw() {
  if (topSimiCircles == true) {
    circleNumber = round(random(2, 6));
    circleTop.circleNumber = circleNumber;
    circleTop.drawCirclesTop();
  }

  if (bottomSimiCircles == true) {;
    circleNumber = round(random(2, 6));
    circleBottom.circleNumber = circleNumber;
    circleBottom.drawCirclesBottom();
  }

  if(filled == true) {
    circleTop.outline = false;
    circleBottom.outline = false;
    circleBottom.drawCirclesBottom();
    circleTop.drawCirclesTop();
  } else {
    circleTop.outline = true;
    circleBottom.outline = true;
  }
  
  filled = false;
  topSimiCircles = false;
  bottomSimiCircles = false;
}


void keyPressed() {
  if (keyCode == UP) {
    topSimiCircles = true;
  }
  if (keyCode == DOWN) {
    bottomSimiCircles = true;
  }

  if (key == 'o' || key == 'O') {
    filled = !filled;
  }

  if (key == 'r' || key == 'R') {
    background(255);
  }
}
