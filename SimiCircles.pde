class SimiCircles {
  float circleNumber;
  boolean outline = false;

  SimiCircles(float circleNumber, boolean outline) {
    this.circleNumber = circleNumber;
    this.outline = outline;
  }

  void drawCirclesBottom() {
    Collections.shuffle(rainbow);
    for (int i=0; i<circleNumber; i++) {
      rainbow.get(i).lines();
      if(outline == true) {
        noFill();
      } else {
        fill(rainbow.get(i).getColor());
      }
      if (i == circleNumber-1) {
        float size = round(random(0, 2));
        if (size == 0) {
           arc(width/2, height/2+5, (width/6)*(6-i), ((height-10)/6)*(6-i), 0, HALF_PI, PIE);
        } else if (size == 1) {
           arc(width/2, height/2+5, (width/6)*(6-i), ((height-10)/6)*(6-i), HALF_PI, PI, PIE);
        } else if (size == 2) {
           arc(width/2, height/2+5, (width/6)*(6-i), ((height-10)/6)*(6-i), 0, PI, PIE);
        }
      } else {
        arc(width/2, height/2+5, (width/6)*(6-i), ((height-10)/6)*(6-i), 0, PI, PIE);
      }
    }
  }

  void drawCirclesTop() {
    Collections.shuffle(rainbow);
    for (int i=0; i<circleNumber; i++) {
      rainbow.get(i).lines();
      if(outline == true) {
        noFill();
      } else {
        fill(rainbow.get(i).getColor());
      }
      if (i == circleNumber-1) {
        float size = round(random(0, 2));
        if (size == 0) {
           arc(width/2, height/2-5, (width/6)*(6-i), ((height-10)/6)*(6-i), PI, PI+HALF_PI, PIE);
        } else if (size == 1) {
           arc(width/2, height/2-5, (width/6)*(6-i), ((height-10)/6)*(6-i), PI+HALF_PI, TWO_PI, PIE);
        } else if (size == 2) {
           arc(width/2, height/2-5, (width/6)*(6-i), ((height-10)/6)*(6-i), PI, TWO_PI, PIE);
        }
      } else {
        arc(width/2, height/2-5, (width/6)*(6-i), ((height-10)/6)*(6-i), PI, TWO_PI, PIE);
      }
    }
  }
}
