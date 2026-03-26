import java.util.Collections;

ArrayList<Rainbow> rainbow = new ArrayList<Rainbow>();

float circleNumber;

boolean topCircles = false;
boolean bottomCircles = false;

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
  if (topCircles == true) {
    circleNumber = round(random(2, 6));
    Circles circleTop = new Circles(circleNumber, filled);
    circleTop.drawCirclesTop();
  }

  if(bottomCircles == true) {
    circleNumber = round(random(2, 6));
    Circles circleBottom = new Circles(circleNumber, filled);
    circleBottom.drawCirclesBottom();
  }


  topCircles = false;
  bottomCircles = false;
}


void keyPressed() {
  if(keyCode == UP) {
    topCircles = true;
  } 
  if(keyCode == DOWN) {
    bottomCircles = true;
  }

  if(key == 'o') {
    background(255);
    filled = !filled;
  }
}
