class SimiCircles {
  float circleNumber;
  boolean outline = false;

  SimiCircles(float circleNumber, boolean outline) {
    this.circleNumber = circleNumber;
    this.outline = outline;
  }

  void drawCirclesBottom(PGraphics pg) {
    Collections.shuffle(rainbow);
    for (int i=0; i<circleNumber; i++) {
      rainbow.get(i).lines();

      if (outline == true) {
        pg.fill(255);
        pg.strokeWeight(4);
        pg.stroke(rainbow.get(i).getColor());
      } else {
        pg.fill(rainbow.get(i).getColor());
      }
      if (i == circleNumber-1) {
        float size = round(random(0, 2));
        if (size == 0) {
          pg.arc(width/2, width/2+45, (width/6-10)*(6-i), ((width-10)/6-10)*(6-i), 0, HALF_PI, PIE);
        } else if (size == 1) {
          pg.arc(width/2, width/2+45, (width/6-10)*(6-i), ((width-10)/6-10)*(6-i), HALF_PI, PI, PIE);
        } else if (size == 2) {
          pg.arc(width/2, width/2+45, (width/6-10)*(6-i), ((width-10)/6-10)*(6-i), 0, PI, PIE);
        }
      } else {
        pg.arc(width/2, width/2+45, (width/6-10)*(6-i), ((width-10)/6-10)*(6-i), 0, PI, PIE);
      }
    }
  }

  void drawCirclesTop(PGraphics pg) {
    Collections.shuffle(rainbow);
    for (int i=0; i<circleNumber; i++) {
      rainbow.get(i).lines();
      pg.noStroke();
      if (outline == true) {
        pg.fill(255);
        pg.strokeWeight(4);
        pg.stroke(rainbow.get(i).getColor());
      } else {
        pg.fill(rainbow.get(i).getColor());
      }
      if (i == circleNumber-1) {
        float size = round(random(0, 2));
        if (size == 0) {
          pg.arc(width/2, width/2+25, (width/6-10)*(6-i), ((width-10)/6-10)*(6-i), PI, PI+HALF_PI, PIE);
        } else if (size == 1) {
          pg.arc(width/2, width/2+25, (width/6-10)*(6-i), ((width-10)/6-10)*(6-i), PI+HALF_PI, TWO_PI, PIE);
        } else if (size == 2) {
          pg.arc(width/2, width/2+25, (width/6-10)*(6-i), ((width-10)/6-10)*(6-i), PI, TWO_PI, PIE);
        }
      } else {
        pg.arc(width/2, width/2+25, (width/6-10)*(6-i), ((width-10)/6-10)*(6-i), PI, TWO_PI, PIE);
      }
    }
  }
}
