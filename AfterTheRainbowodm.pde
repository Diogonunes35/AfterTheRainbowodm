import java.util.Collections;

ArrayList<Rainbow> rainbow = new ArrayList<Rainbow>();

float circleNumber;

boolean topSimiCircles = false;
boolean bottomSimiCircles = false;

boolean filled = false;


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
}

void draw() {
  if (topSimiCircles == true) {
    circleNumber = round(random(2, 6));
    SimiCircles circleTop = new SimiCircles(circleNumber, filled);
    circleTop.drawCirclesTop();
  }

  if(bottomSimiCircles == true) {
    circleNumber = round(random(2, 6));
    SimiCircles circleBottom = new SimiCircles(circleNumber, filled);
    circleBottom.drawCirclesBottom();
  }


  topSimiCircles = false;
  bottomSimiCircles = false;
}


void keyPressed() {
  if(keyCode == UP) {
    topSimiCircles = true;
  } 
  if(keyCode == DOWN) {
    bottomSimiCircles = true;
  }

  if(key == 'o') {
    background(255);
    filled = !filled;
  }
}
